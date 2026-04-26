import type { SubscriberArgs, SubscriberConfig } from "@medusajs/framework"

export default async function productSyncHandler({
  event: { name, data },
}: SubscriberArgs<{ id: string }>) {
  try {
    const storefrontUrl = process.env.STOREFRONT_URL
    const secret = process.env.REVALIDATE_SECRET

    if (!storefrontUrl || !secret) {
      console.warn("Missing STOREFRONT_URL or REVALIDATE_SECRET for cache revalidation.")
      return
    }

    // Ping the Next.js Storefront to invalidate "products"
    await fetch(`${storefrontUrl}/api/revalidate?tag=products&secret=${secret}`, {
      method: "POST",
    })
    console.log(`[Cache Revalidate] Triggered by ${name} for product: ${data.id}`)
  } catch (error) {
    console.error(`[Cache Revalidate] Failed to revalidate for ${name}:`, error)
  }
}

export const config: SubscriberConfig = {
  event: [
    "product.created",
    "product.updated",
    "product.deleted",
  ],
}
