import {
  Body,
  Column,
  Container,
  Head,
  Heading,
  Html,
  Img,
  Link,
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
              src={`${process.env.STOREFRONT_URL || 'https://superraca.com'}/logo.png`}
              alt="Super Raça"
              width="120"
              height="40"
              className="mx-auto"
              style={{ margin: "0 auto" }}
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
            {order.items?.map((item) => (
              <Section key={item.id} className="border-b border-gray-200 py-4">
                <Row>
                  <Column className="w-1/3">
                    <Img
                      src={item.thumbnail ?? ""}
                      alt={item.product_title ?? ""}
                      className="rounded-lg"
                      width="100%"
                    />
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
            ))}

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
