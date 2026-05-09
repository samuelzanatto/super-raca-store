import {
  Body,
  Column,
  Container,
  Head,
  Heading,
  Html,
  Img,
  Preview,
  Row,
  Section,
  Tailwind,
  Text,
} from "@react-email/components"
import { BigNumberValue, CustomerDTO, OrderDTO } from "@medusajs/framework/types"
import React from "react"

type OrderPlacedEmailProps = {
  order: OrderDTO & {
    customer: CustomerDTO
  }
}

type EmailImage = {
  url?: string | null
}

type EmailOrderItem = NonNullable<OrderDTO["items"]>[number] & {
  thumbnail?: string | null
  product_thumbnail?: string | null
  product?: {
    thumbnail?: string | null
    images?: EmailImage[] | null
  } | null
  variant?: {
    product?: {
      thumbnail?: string | null
      images?: EmailImage[] | null
    } | null
  } | null
}

const normalizeBaseUrl = (url?: string | null) =>
  (url || "").replace(/\/$/, "")

const storefrontUrl = normalizeBaseUrl(
  process.env.STOREFRONT_URL || "https://store.superraca.com"
)

const backendUrl = normalizeBaseUrl(
  process.env.MEDUSA_BACKEND_URL || storefrontUrl
)

const getAbsoluteUrl = (rawUrl?: string | null) => {
  const url = rawUrl?.trim()

  if (!url || url.startsWith("data:")) {
    return null
  }

  if (url.startsWith("http://") || url.startsWith("https://")) {
    return url
  }

  if (url.startsWith("//")) {
    return `https:${url}`
  }

  const baseUrl =
    url.startsWith("/uploads") || url.startsWith("/static")
      ? backendUrl
      : storefrontUrl

  return `${baseUrl}${url.startsWith("/") ? url : `/${url}`}`
}

const getProductImageUrl = (item: EmailOrderItem) =>
  getAbsoluteUrl(
    item.thumbnail ||
      item.product_thumbnail ||
      item.variant?.product?.thumbnail ||
      item.product?.thumbnail ||
      item.variant?.product?.images?.[0]?.url ||
      item.product?.images?.[0]?.url
  )

function OrderPlacedEmailComponent({ order }: OrderPlacedEmailProps) {
  const formatter = new Intl.NumberFormat("pt-BR", {
    style: "currency",
    currencyDisplay: "narrowSymbol",
    currency: order.currency_code,
  })

  const formatPrice = (price: BigNumberValue) => {
    if (typeof price === "number") {
      return formatter.format(price)
    }

    if (typeof price === "string") {
      return formatter.format(parseFloat(price))
    }

    return price?.toString() || ""
  }

  return (
    <Tailwind>
      <Html className="font-sans bg-gray-100">
        <Head />
        <Preview>Obrigado pelo seu pedido na Super Raça!</Preview>
        <Body className="bg-white my-10 mx-auto w-full max-w-2xl">
          {/* Header */}
          <Section className="bg-[#1a1a2e] text-white px-6 py-6 text-center">
            <Img
              src={`${storefrontUrl}/logo.png`}
              alt="Super Raça"
              width="64"
              height="64"
              className="mx-auto"
              style={{
                display: "block",
                margin: "0 auto",
                width: "64px",
                height: "64px",
              }}
            />
            <Text className="text-sm text-gray-300 m-0 mt-2">
              Vista sua fé com estilo
            </Text>
          </Section>

          {/* Thank You Message */}
          <Container className="p-8">
            <Heading className="text-2xl font-bold text-center text-gray-800">
              Obrigado pelo seu pedido{order.customer?.first_name ? `, ${order.customer.first_name}` : order.shipping_address?.first_name ? `, ${order.shipping_address.first_name}` : ""}!
            </Heading>
            <Text className="text-center text-gray-600 mt-2">
              Estamos processando seu pedido e você receberá uma notificação quando for enviado.
            </Text>
          </Container>

          {/* Order Items */}
          <Container className="px-8">
            <Heading className="text-xl font-semibold text-gray-800 mb-4">
              Seus Itens
            </Heading>
            <Row>
              <Column>
                <Text className="text-sm m-0 my-2 text-gray-500">
                  Pedido #{order.display_id}
                </Text>
              </Column>
            </Row>
            {order.items?.map((item) => {
              const imageUrl = getProductImageUrl(item as EmailOrderItem)

              return (
                <Section key={item.id} className="border-b border-gray-200 py-4">
                  <Row>
                    <Column className="w-1/3" style={{ width: "140px" }}>
                      {imageUrl ? (
                        <Img
                          src={imageUrl}
                          alt={item.product_title ?? "Produto"}
                          className="rounded-lg"
                          width="120"
                          style={{
                            display: "block",
                            width: "120px",
                            maxWidth: "120px",
                            height: "auto",
                            borderRadius: "8px",
                          }}
                        />
                      ) : (
                        <Text className="text-gray-500 text-sm m-0">
                          Imagem indisponível
                        </Text>
                      )}
                    </Column>
                    <Column className="w-2/3 pl-4">
                      <Text className="text-lg font-semibold text-gray-800">
                        {item.product_title}
                      </Text>
                      <Text className="text-gray-600">{item.variant_title}</Text>
                      <Text className="text-gray-500 text-sm">Qtd: {item.quantity}</Text>
                      <Text className="text-gray-800 mt-2 font-bold">
                        {formatPrice(item.total)}
                      </Text>
                    </Column>
                  </Row>
                </Section>
              )
            })}

            {/* Order Summary */}
            <Section className="mt-8">
              <Heading className="text-xl font-semibold text-gray-800 mb-4">
                Resumo do Pedido
              </Heading>
              <Row className="text-gray-600">
                <Column className="w-1/2">
                  <Text className="m-0">Subtotal</Text>
                </Column>
                <Column className="w-1/2 text-right">
                  <Text className="m-0">
                    {formatPrice(order.item_total)}
                  </Text>
                </Column>
              </Row>
              {order.shipping_methods?.map((method) => (
                <Row className="text-gray-600" key={method.id}>
                  <Column className="w-1/2">
                    <Text className="m-0">{method.name}</Text>
                  </Column>
                  <Column className="w-1/2 text-right">
                    <Text className="m-0">{formatPrice(method.total)}</Text>
                  </Column>
                </Row>
              ))}
              <Row className="text-gray-600">
                <Column className="w-1/2">
                  <Text className="m-0">Impostos</Text>
                </Column>
                <Column className="w-1/2 text-right">
                  <Text className="m-0">{formatPrice(order.tax_total || 0)}</Text>
                </Column>
              </Row>
              <Row className="border-t border-gray-200 mt-4 text-gray-800 font-bold">
                <Column className="w-1/2">
                  <Text>Total</Text>
                </Column>
                <Column className="w-1/2 text-right">
                  <Text>{formatPrice(order.total)}</Text>
                </Column>
              </Row>
            </Section>
          </Container>

          {/* Footer */}
          <Section className="bg-gray-50 p-6 mt-10">
            <Text className="text-center text-gray-500 text-sm">
              Se tiver dúvidas, entre em contato conosco respondendo este email.
            </Text>
            <Text className="text-center text-gray-500 text-sm">
              Código do pedido: {order.id}
            </Text>
            <Text className="text-center text-gray-400 text-xs mt-4">
              © {new Date().getFullYear()} Super Raça. Todos os direitos reservados.
            </Text>
          </Section>
        </Body>
      </Html>
    </Tailwind>
  )
}

export const orderPlacedEmail = (props: OrderPlacedEmailProps) => (
  <OrderPlacedEmailComponent {...props} />
)
