import {
  AbstractFulfillmentProviderService,
  MedusaError,
} from "@medusajs/framework/utils"
import {
  CalculatedShippingOptionPrice,
  CalculateShippingOptionPriceDTO,
  CreateFulfillmentResult,
  CreateShippingOptionDTO,
  FulfillmentDTO,
  FulfillmentItemDTO,
  FulfillmentOption,
  FulfillmentOrderDTO,
  Logger,
  ValidateFulfillmentDataContext,
} from "@medusajs/framework/types"

type InjectedDependencies = {
  logger: Logger
}

type MelhorEnvioOptions = {
  client_id: string
  client_secret: string
  redirect_uri: string
  token: string
  refresh_token?: string
  from_postal_code: string
  sandbox?: boolean | string
  user_agent?: string
  default_weight?: number | string
  default_height?: number | string
  default_width?: number | string
  default_length?: number | string
  weight_unit?: "g" | "kg"
  timeout_ms?: number | string
  retries?: number | string
  auto_purchase?: boolean | string
  print_mode?: "private" | "public"
  sender?: Record<string, unknown>
}

type MelhorEnvioProduct = {
  id: string
  name?: string
  quantity: number
  unitary_value?: number
  insurance_value: number
  width: number
  height: number
  length: number
  weight: number
}

type MelhorEnvioVolume = {
  height: number
  width: number
  length: number
  weight: number
  insurance_value?: number
  format?: "box" | "roll" | "envelope"
  products?: { id: string; quantity: number }[]
}

type MelhorEnvioQuote = {
  id?: number | string
  name?: string
  price?: string | number
  custom_price?: string | number
  delivery_time?: number
  custom_delivery_time?: number
  company?: {
    id?: number | string
    name?: string
    picture?: string
  }
  packages?: {
    price?: string | number
    discount?: string | number
    format?: string
    dimensions?: {
      height?: number
      width?: number
      length?: number
    }
    weight?: string | number
    insurance_value?: string | number
    products?: { id?: string; quantity?: number }[]
  }[]
  error?: string
}

type MelhorEnvioTokenResponse = {
  access_token?: string
  refresh_token?: string
  token_type?: string
  expires_in?: number
}

const BASE_SERVICES: FulfillmentOption[] = [
  { id: "1", name: "PAC", service_code: "PAC", company: "Correios", service_id: 1 },
  { id: "2", name: "SEDEX", service_code: "SEDEX", company: "Correios", service_id: 2 },
  { id: "17", name: "Mini Envios", service_code: "MINI_ENVIOS", company: "Correios", service_id: 17 },
  { id: "3", name: "Jadlog Package", service_code: "JADLOG_PACKAGE", company: "Jadlog", service_id: 3 },
  { id: "4", name: "Jadlog Com", service_code: "JADLOG_COM", company: "Jadlog", service_id: 4 },
]

class MelhorEnvioFulfillmentProviderService extends AbstractFulfillmentProviderService {
  static identifier = "melhor-envio"

  protected logger: Logger
  protected options: Required<
    Pick<
      MelhorEnvioOptions,
      | "client_id"
      | "client_secret"
      | "redirect_uri"
      | "token"
      | "from_postal_code"
      | "user_agent"
      | "weight_unit"
      | "print_mode"
    >
  > &
    MelhorEnvioOptions
  protected accessToken: string
  protected refreshToken?: string
  protected tokenExpiresAt?: number

  constructor({ logger }: InjectedDependencies, options: MelhorEnvioOptions) {
    super()

    this.logger = logger
    this.options = {
      ...options,
      sandbox: toBoolean(options.sandbox, true),
      from_postal_code: normalizePostalCode(options.from_postal_code),
      user_agent: options.user_agent || "Super Raca Store (contato@superraca.com.br)",
      default_weight: toNumber(options.default_weight, 0.3),
      default_height: toNumber(options.default_height, 4),
      default_width: toNumber(options.default_width, 16),
      default_length: toNumber(options.default_length, 24),
      weight_unit: options.weight_unit || "g",
      timeout_ms: toNumber(options.timeout_ms, 10000),
      retries: toNumber(options.retries, 2),
      auto_purchase: toBoolean(options.auto_purchase, false),
      print_mode: options.print_mode || "public",
    }
    this.accessToken = options.token
    this.refreshToken = options.refresh_token
  }

  static validateOptions(options: Record<string, unknown>) {
    const required = [
      "client_id",
      "client_secret",
      "redirect_uri",
      "token",
      "from_postal_code",
    ]

    for (const key of required) {
      if (!options[key]) {
        throw new MedusaError(
          MedusaError.Types.INVALID_DATA,
          `Option \`${key}\` is required in the Melhor Envio fulfillment provider.`
        )
      }
    }
  }

  async getFulfillmentOptions(): Promise<FulfillmentOption[]> {
    try {
      const services = await this.request<unknown[]>("/api/v2/me/shipment/services", {
        method: "GET",
      })

      if (!Array.isArray(services)) {
        return BASE_SERVICES
      }

      return services.map((service) => {
        const record = asRecord(service)
        const company = asRecord(record.company)
        const id = String(record.id ?? record.service_id)

        return {
          id,
          name: String(record.name ?? `Melhor Envio ${id}`),
          service_code: record.code ?? record.name ?? id,
          service_id: Number(record.id ?? record.service_id),
          company_id: record.company_id ?? company.id,
          company: company.name,
        }
      })
    } catch (error) {
      this.logger.warn(
        `Could not fetch Melhor Envio services. Falling back to bundled services. ${errorMessage(error)}`
      )
      return BASE_SERVICES
    }
  }

  async validateOption(data: Record<string, unknown>): Promise<boolean> {
    return resolveServiceId(data) !== undefined
  }

  async canCalculate(_data: CreateShippingOptionDTO): Promise<boolean> {
    return true
  }

  async validateFulfillmentData(
    optionData: Record<string, unknown>,
    data: Record<string, unknown>,
    context: ValidateFulfillmentDataContext
  ): Promise<Record<string, unknown>> {
    const calculation = await this.calculateShipment(optionData, data, context)

    return {
      ...data,
      melhor_envio_service_id: calculation.serviceId,
      melhor_envio_quote: calculation.quote,
      melhor_envio_products: calculation.products,
      melhor_envio_volumes: calculation.volumes,
    }
  }

  async calculatePrice(
    optionData: CalculateShippingOptionPriceDTO["optionData"],
    data: CalculateShippingOptionPriceDTO["data"],
    context: CalculateShippingOptionPriceDTO["context"]
  ): Promise<CalculatedShippingOptionPrice> {
    const calculation = await this.calculateShipment(optionData, data, context)

    return {
      calculated_amount: calculation.price,
      is_calculated_price_tax_inclusive: false,
    }
  }

  async createFulfillment(
    data: Record<string, unknown>,
    items: Partial<Omit<FulfillmentItemDTO, "fulfillment">>[],
    order: Partial<FulfillmentOrderDTO> | undefined,
    fulfillment: Partial<Omit<FulfillmentDTO, "provider_id" | "data" | "items">>
  ): Promise<CreateFulfillmentResult> {
    const serviceId = resolveServiceId(data)

    if (!serviceId) {
      throw new MedusaError(
        MedusaError.Types.INVALID_DATA,
        "Missing Melhor Envio service id in fulfillment data."
      )
    }

    const payload = this.buildCartPayload(serviceId, data, items, order, fulfillment)
    const cartShipment = await this.request<Record<string, unknown>>("/api/v2/me/cart", {
      method: "POST",
      body: payload,
    })
    const orderId = extractOrderId(cartShipment)

    const resultData: Record<string, unknown> = {
      ...data,
      melhor_envio_cart_response: cartShipment,
      melhor_envio_order_id: orderId,
      melhor_envio_service_id: serviceId,
    }

    if (!orderId || !this.options.auto_purchase) {
      return {
        data: resultData,
        labels: [],
      }
    }

    const checkout = await this.request<Record<string, unknown>>(
      "/api/v2/me/shipment/checkout",
      {
        method: "POST",
        body: { orders: [orderId] },
      }
    )
    const generation = await this.request<Record<string, unknown>>(
      "/api/v2/me/shipment/generate",
      {
        method: "POST",
        body: { orders: [orderId] },
      }
    )
    const print = await this.request<Record<string, unknown>>(
      "/api/v2/me/shipment/print",
      {
        method: "POST",
        body: { mode: this.options.print_mode, orders: [orderId] },
      }
    )

    const labelUrl = extractUrl(print) || this.labelFileUrl(orderId, "pdf")

    return {
      data: {
        ...resultData,
        melhor_envio_checkout_response: checkout,
        melhor_envio_generate_response: generation,
        melhor_envio_print_response: print,
        melhor_envio_label_url: labelUrl,
      },
      labels: labelUrl
        ? [
            {
              tracking_number: extractTrackingNumber(cartShipment) || orderId,
              tracking_url: this.trackingUrl(orderId),
              label_url: labelUrl,
            },
          ]
        : [],
    }
  }

  async cancelFulfillment(data: Record<string, unknown>): Promise<Record<string, unknown>> {
    const orderId = String(data.melhor_envio_order_id || "")

    if (!orderId) {
      return {}
    }

    return await this.request<Record<string, unknown>>("/api/v2/me/shipment/cancel", {
      method: "POST",
      body: {
        order: {
          id: orderId,
          reason_id: data.melhor_envio_cancel_reason_id ?? 2,
          description:
            data.melhor_envio_cancel_description ?? "Fulfillment canceled in Medusa.",
        },
      },
    })
  }

  async createReturnFulfillment(): Promise<CreateFulfillmentResult> {
    return {
      data: {},
      labels: [],
    }
  }

  protected async calculateShipment(
    optionData: Record<string, unknown>,
    data: Record<string, unknown>,
    context: CalculateShippingOptionPriceDTO["context"] | ValidateFulfillmentDataContext
  ) {
    const products = this.buildProductsFromCartContext(context)

    if (!products.length) {
      throw new MedusaError(
        MedusaError.Types.INVALID_DATA,
        "Cart items are required to calculate Melhor Envio shipping."
      )
    }

    const volumes = this.buildVolumes(products)
    const serviceId = resolveServiceId(optionData) ?? resolveServiceId(data)
    const destinationPostalCode = normalizePostalCode(
      String(context.shipping_address?.postal_code || data.to_postal_code || "")
    )
    const originPostalCode = this.resolveOriginPostalCode(context)

    if (!destinationPostalCode) {
      throw new MedusaError(
        MedusaError.Types.INVALID_DATA,
        "A destination postal code is required to calculate Melhor Envio shipping."
      )
    }

    const quotes = await this.request<MelhorEnvioQuote[]>("/api/v2/me/shipment/calculate", {
      method: "POST",
      body: {
        from: { postal_code: originPostalCode },
        to: { postal_code: destinationPostalCode },
        products,
        options: {
          receipt: false,
          own_hand: false,
          collect: false,
        },
      },
    })

    const quote = selectQuote(quotes, serviceId)

    if (!quote) {
      throw new MedusaError(
        MedusaError.Types.INVALID_DATA,
        "Melhor Envio did not return a valid quote for this shipping option."
      )
    }

    if (quote.error) {
      throw new MedusaError(
        MedusaError.Types.INVALID_DATA,
        `Melhor Envio quote error: ${quote.error}`
      )
    }

    const price = toNumber(quote.custom_price ?? quote.price, NaN)

    if (!Number.isFinite(price)) {
      throw new MedusaError(
        MedusaError.Types.INVALID_DATA,
        "Melhor Envio returned a quote without a valid price."
      )
    }

    return {
      quote,
      products,
      volumes: quote.packages?.length ? mapPackagesToVolumes(quote.packages) : volumes,
      price,
      serviceId: Number(quote.id ?? serviceId),
    }
  }

  protected buildProductsFromCartContext(
    context: CalculateShippingOptionPriceDTO["context"] | ValidateFulfillmentDataContext
  ): MelhorEnvioProduct[] {
    return (context.items || []).map((item) => {
      const record = item as unknown as Record<string, unknown>
      const variant = asRecord(record.variant)
      const product = asRecord(record.product)
      const metadata = asRecord(record.metadata)
      const quantity = toNumber(record.quantity, 1)
      const unitPrice = toNumber(record.unit_price, 0)
      const id = String(record.id || variant.id || product.id)

      return {
        id,
        name: String(record.title || product.title || variant.title || id),
        quantity,
        unitary_value: unitPrice,
        insurance_value: unitPrice,
        width: this.dimension(variant.width ?? product.width ?? metadata.width, "width"),
        height: this.dimension(variant.height ?? product.height ?? metadata.height, "height"),
        length: this.dimension(variant.length ?? product.length ?? metadata.length, "length"),
        weight: this.weight(variant.weight ?? product.weight ?? metadata.weight),
      }
    })
  }

  protected buildCartPayload(
    serviceId: number,
    data: Record<string, unknown>,
    items: Partial<Omit<FulfillmentItemDTO, "fulfillment">>[],
    order: Partial<FulfillmentOrderDTO> | undefined,
    fulfillment: Partial<Omit<FulfillmentDTO, "provider_id" | "data" | "items">>
  ) {
    const products = this.resolveFulfillmentProducts(data, items, order)
    const volumes = this.resolveFulfillmentVolumes(data, products)
    const from = {
      ...(this.options.sender || {}),
      postal_code: this.options.from_postal_code,
      ...asRecord(data.from),
    }
    const to = {
      ...this.buildAddress(order, fulfillment),
      ...asRecord(data.to),
    }

    return {
      service: serviceId,
      agency: data.melhor_envio_agency_id,
      from,
      to,
      products,
      volumes,
      options: {
        insurance_value: products.reduce((sum, product) => {
          return sum + product.insurance_value * product.quantity
        }, 0),
        receipt: false,
        own_hand: false,
        collect: false,
        ...asRecord(data.options),
      },
    }
  }

  protected resolveFulfillmentProducts(
    data: Record<string, unknown>,
    items: Partial<Omit<FulfillmentItemDTO, "fulfillment">>[],
    order: Partial<FulfillmentOrderDTO> | undefined
  ): MelhorEnvioProduct[] {
    const savedProducts = data.melhor_envio_products

    if (Array.isArray(savedProducts) && savedProducts.length) {
      return savedProducts as MelhorEnvioProduct[]
    }

    return items.map((item) => {
      const orderItem = order?.items?.find((candidate) => {
        return candidate.id === item.line_item_id || candidate.detail?.id === item.line_item_id
      })
      const quantity = toNumber(item.quantity, 1)
      const unitPrice = toNumber(orderItem?.unit_price, 0)
      const id = String(item.line_item_id || item.id)

      return {
        id,
        name: String(item.title || orderItem?.title || id),
        quantity,
        unitary_value: unitPrice,
        insurance_value: unitPrice,
        width: this.dimension(undefined, "width"),
        height: this.dimension(undefined, "height"),
        length: this.dimension(undefined, "length"),
        weight: this.weight(undefined),
      }
    })
  }

  protected resolveFulfillmentVolumes(
    data: Record<string, unknown>,
    products: MelhorEnvioProduct[]
  ): MelhorEnvioVolume[] {
    const savedVolumes = data.melhor_envio_volumes

    if (Array.isArray(savedVolumes) && savedVolumes.length) {
      return savedVolumes as MelhorEnvioVolume[]
    }

    return this.buildVolumes(products)
  }

  protected buildVolumes(products: MelhorEnvioProduct[]): MelhorEnvioVolume[] {
    const totalWeight = products.reduce((sum, product) => {
      return sum + product.weight * product.quantity
    }, 0)
    const insuranceValue = products.reduce((sum, product) => {
      return sum + product.insurance_value * product.quantity
    }, 0)

    return [
      {
        height: Math.max(...products.map((product) => product.height)),
        width: Math.max(...products.map((product) => product.width)),
        length: Math.max(...products.map((product) => product.length)),
        weight: roundWeight(totalWeight || this.weight(undefined)),
        insurance_value: insuranceValue,
        format: "box",
        products: products.map((product) => ({
          id: product.id,
          quantity: product.quantity,
        })),
      },
    ]
  }

  protected buildAddress(
    order: Partial<FulfillmentOrderDTO> | undefined,
    fulfillment: Partial<Omit<FulfillmentDTO, "provider_id" | "data" | "items">>
  ): Record<string, unknown> {
    const address = order?.shipping_address || fulfillment.delivery_address
    const fullName = [address?.first_name, address?.last_name].filter(Boolean).join(" ")
    const metadata = asRecord(address?.metadata)

    return {
      name: fullName || order?.email || "Cliente",
      phone: address?.phone,
      email: order?.email,
      address: address?.address_1,
      complement: address?.address_2,
      number: metadata.number,
      district: metadata.district,
      city: address?.city,
      state_abbr: String(address?.province || "").toUpperCase(),
      country_id: String(address?.country_code || "BR").toUpperCase(),
      postal_code: normalizePostalCode(String(address?.postal_code || "")),
      document: metadata.document,
    }
  }

  protected resolveOriginPostalCode(
    context: CalculateShippingOptionPriceDTO["context"] | ValidateFulfillmentDataContext
  ): string {
    const fromLocation = asRecord(context.from_location)
    const address = asRecord(fromLocation.address)
    const postalCode = normalizePostalCode(
      String(address.postal_code || this.options.from_postal_code)
    )

    return postalCode || this.options.from_postal_code
  }

  protected dimension(value: unknown, key: "height" | "width" | "length"): number {
    const defaults = {
      height: this.options.default_height,
      width: this.options.default_width,
      length: this.options.default_length,
    }
    const dimension = toNumber(value, Number(defaults[key]))

    return dimension > 0 ? dimension : Number(defaults[key])
  }

  protected weight(value: unknown): number {
    const fallback = Number(this.options.default_weight)
    const raw = toNumber(value, fallback)
    const inKg = this.options.weight_unit === "g" ? raw / 1000 : raw
    const fallbackInKg = this.options.weight_unit === "g" ? fallback / 1000 : fallback

    return roundWeight(inKg > 0 ? inKg : fallbackInKg)
  }

  protected async request<T>(
    path: string,
    options: {
      method: "GET" | "POST"
      body?: unknown
      authenticated?: boolean
      retryAuth?: boolean
    }
  ): Promise<T> {
    const authenticated = options.authenticated ?? true
    const retryAuth = options.retryAuth ?? true
    const maxAttempts = Math.max(1, Number(this.options.retries) + 1)
    let lastError: unknown

    for (let attempt = 1; attempt <= maxAttempts; attempt += 1) {
      const controller = new AbortController()
      const timeout = setTimeout(() => controller.abort(), Number(this.options.timeout_ms))

      try {
        const response = await fetch(`${this.baseUrl()}${path}`, {
          method: options.method,
          signal: controller.signal,
          headers: {
            Accept: "application/json",
            "Content-Type": "application/json",
            "User-Agent": this.options.user_agent,
            ...(authenticated ? { Authorization: `Bearer ${await this.getAccessToken()}` } : {}),
          },
          body: options.body ? JSON.stringify(options.body) : undefined,
        })

        clearTimeout(timeout)

        if (response.status === 401 && authenticated && retryAuth) {
          await this.refreshAccessToken()
          return await this.request<T>(path, {
            ...options,
            retryAuth: false,
          })
        }

        if (response.status >= 500 || response.status === 429) {
          throw new MelhorEnvioHttpError(response.status, await response.text())
        }

        if (!response.ok) {
          throw new MelhorEnvioHttpError(response.status, await response.text())
        }

        return (await response.json()) as T
      } catch (error) {
        clearTimeout(timeout)
        lastError = error

        if (attempt === maxAttempts || error instanceof MelhorEnvioHttpError && error.status < 500 && error.status !== 429) {
          break
        }

        await sleep(250 * attempt)
      }
    }

    this.logger.error(`Melhor Envio request failed for ${path}: ${errorMessage(lastError)}`)
    throw lastError
  }

  protected async getAccessToken(): Promise<string> {
    if (this.tokenExpiresAt && Date.now() > this.tokenExpiresAt - 60000) {
      await this.refreshAccessToken()
    }

    return this.accessToken
  }

  protected async refreshAccessToken(): Promise<void> {
    if (!this.refreshToken) {
      throw new MedusaError(
        MedusaError.Types.INVALID_DATA,
        "MELHOR_ENVIO_REFRESH_TOKEN is required to refresh the Melhor Envio access token."
      )
    }

    const body = new URLSearchParams({
      grant_type: "refresh_token",
      client_id: this.options.client_id,
      client_secret: this.options.client_secret,
      refresh_token: this.refreshToken,
      redirect_uri: this.options.redirect_uri,
    })
    const controller = new AbortController()
    const timeout = setTimeout(() => controller.abort(), Number(this.options.timeout_ms))

    try {
      const response = await fetch(`${this.baseUrl()}/oauth/token`, {
        method: "POST",
        signal: controller.signal,
        headers: {
          Accept: "application/json",
          "Content-Type": "application/x-www-form-urlencoded",
          "User-Agent": this.options.user_agent,
        },
        body,
      })

      if (!response.ok) {
        throw new MelhorEnvioHttpError(response.status, await response.text())
      }

      const token = (await response.json()) as MelhorEnvioTokenResponse

      if (!token.access_token) {
        throw new MedusaError(
          MedusaError.Types.INVALID_DATA,
          "Melhor Envio refresh response did not include an access token."
        )
      }

      this.accessToken = token.access_token
      this.refreshToken = token.refresh_token || this.refreshToken
      this.tokenExpiresAt = token.expires_in
        ? Date.now() + token.expires_in * 1000
        : undefined
      this.logger.info("Melhor Envio access token refreshed successfully.")
    } finally {
      clearTimeout(timeout)
    }
  }

  protected baseUrl(): string {
    return this.options.sandbox
      ? "https://sandbox.melhorenvio.com.br"
      : "https://melhorenvio.com.br"
  }

  protected labelFileUrl(orderId: string, fileType: "pdf" | "jpeg" | "zpl"): string {
    return `${this.baseUrl()}/api/v2/me/imprimir/${fileType}/${orderId}`
  }

  protected trackingUrl(orderId: string): string {
    return `${this.baseUrl()}/painel/envios/${orderId}`
  }
}

class MelhorEnvioHttpError extends Error {
  constructor(
    readonly status: number,
    readonly responseBody: string
  ) {
    super(`Melhor Envio API returned ${status}: ${responseBody}`)
  }
}

function selectQuote(quotes: MelhorEnvioQuote[], serviceId?: number): MelhorEnvioQuote | undefined {
  if (!Array.isArray(quotes)) {
    return undefined
  }

  const availableQuotes = quotes.filter((quote) => !quote.error)

  if (serviceId) {
    return availableQuotes.find((quote) => Number(quote.id) === serviceId)
  }

  return availableQuotes
    .filter((quote) => Number.isFinite(toNumber(quote.custom_price ?? quote.price, NaN)))
    .sort((a, b) => {
      return toNumber(a.custom_price ?? a.price, 0) - toNumber(b.custom_price ?? b.price, 0)
    })[0]
}

function mapPackagesToVolumes(packages: NonNullable<MelhorEnvioQuote["packages"]>): MelhorEnvioVolume[] {
  return packages.map((shipmentPackage) => ({
    height: Number(shipmentPackage.dimensions?.height || 0),
    width: Number(shipmentPackage.dimensions?.width || 0),
    length: Number(shipmentPackage.dimensions?.length || 0),
    weight: roundWeight(toNumber(shipmentPackage.weight, 0)),
    insurance_value: toNumber(shipmentPackage.insurance_value, 0),
    format: "box",
    products: shipmentPackage.products?.map((product) => ({
      id: String(product.id),
      quantity: toNumber(product.quantity, 1),
    })),
  }))
}

function extractOrderId(response: Record<string, unknown>): string | undefined {
  return stringValue(response.id ?? response.order_id ?? response.protocol ?? response.order)
}

function extractTrackingNumber(response: Record<string, unknown>): string | undefined {
  return stringValue(response.tracking ?? response.tracking_number ?? response.protocol)
}

function extractUrl(response: Record<string, unknown>): string | undefined {
  const url = response.url ?? response.print_url ?? response.label_url

  if (typeof url === "string") {
    return url
  }

  const data = asRecord(response.data)
  const dataUrl = data.url ?? data.print_url ?? data.label_url

  return typeof dataUrl === "string" ? dataUrl : undefined
}

function resolveServiceId(data: Record<string, unknown>): number | undefined {
  const id = data.service_id ?? data.melhor_envio_service_id ?? data.id
  const parsed = Number(id)

  return Number.isFinite(parsed) && parsed > 0 ? parsed : undefined
}

function normalizePostalCode(value: string): string {
  return value.replace(/\D/g, "")
}

function roundWeight(value: number): number {
  return Math.max(0.01, Number(value.toFixed(3)))
}

function toNumber(value: unknown, fallback: number): number {
  if (typeof value === "number" && Number.isFinite(value)) {
    return value
  }

  if (typeof value === "string" && value.trim()) {
    const normalized = value.replace(",", ".")
    const parsed = Number(normalized)

    if (Number.isFinite(parsed)) {
      return parsed
    }
  }

  return fallback
}

function toBoolean(value: unknown, fallback: boolean): boolean {
  if (typeof value === "boolean") {
    return value
  }

  if (typeof value === "string") {
    return ["true", "1", "yes"].includes(value.toLowerCase())
  }

  return fallback
}

function asRecord(value: unknown): Record<string, unknown> {
  return value && typeof value === "object" && !Array.isArray(value)
    ? (value as Record<string, unknown>)
    : {}
}

function stringValue(value: unknown): string | undefined {
  return typeof value === "string" && value ? value : undefined
}

function errorMessage(error: unknown): string {
  return error instanceof Error ? error.message : String(error)
}

function sleep(ms: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, ms))
}

export default MelhorEnvioFulfillmentProviderService
