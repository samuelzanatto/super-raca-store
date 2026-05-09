import { Modules } from "@medusajs/framework/utils"
import { createStep, StepResponse } from "@medusajs/framework/workflows-sdk"

type StepInput = {
  order: any
}

export const enrichOrderItemImagesStep = createStep(
  "enrich-order-item-images",
  async ({ order }: StepInput, { container }) => {
    const productIds: string[] = Array.from(
      new Set<string>(
        (order.items || [])
          .map((item: any) => item?.product_id)
          .filter((id: unknown): id is string => typeof id === "string" && !!id)
      )
    )

    if (!productIds.length) {
      return new StepResponse(order)
    }

    const productModuleService = container.resolve(Modules.PRODUCT)
    const products = await productModuleService.listProducts(
      { id: productIds },
      {
        relations: ["images"],
        select: ["id", "thumbnail"],
      }
    )

    const imageByProductId = new Map(
      products.map((product) => [
        product.id,
        product.thumbnail || product.images?.[0]?.url || null,
      ])
    )

    return new StepResponse({
      ...order,
      items: order.items?.map((item) =>
        item
          ? {
              ...item,
              thumbnail:
                item.thumbnail ||
                (item.product_id ? imageByProductId.get(item.product_id) : null) ||
                item.thumbnail,
            }
          : item
      ),
    })
  }
)
