import type { SubscriberArgs, SubscriberConfig } from "@medusajs/framework"

export default async function categorySyncHandler({
  event: { name, data },
}: SubscriberArgs<{ id: string }>) {
  try {
    const storefrontUrl = process.env.STOREFRONT_URL
    const secret = process.env.REVALIDATE_SECRET

    if (!storefrontUrl || !secret) {
      return
    }

    // Invalidate categories and products (since products list may include categories)
    await fetch(`${storefrontUrl}/api/revalidate?tag=categories,products&secret=${secret}`, {
      method: "POST",
    })
    console.log(`[Cache Revalidate] Triggered by ${name} for category: ${data.id}`)
  } catch (error) {
    console.error(`[Cache Revalidate] Failed to revalidate for ${name}:`, error)
  }
}

export const config: SubscriberConfig = {
  event: [
    "product-category.created",
    "product-category.updated",
    "product-category.deleted",
  ],
}
