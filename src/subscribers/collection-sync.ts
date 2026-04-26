import type { SubscriberArgs, SubscriberConfig } from "@medusajs/framework"

export default async function collectionSyncHandler({
  event: { name, data },
}: SubscriberArgs<{ id: string }>) {
  try {
    const storefrontUrl = process.env.STOREFRONT_URL
    const secret = process.env.REVALIDATE_SECRET

    if (!storefrontUrl || !secret) {
      return
    }

    // Invalidate collections and products
    await fetch(`${storefrontUrl}/api/revalidate?tag=collections,products&secret=${secret}`, {
      method: "POST",
    })
    console.log(`[Cache Revalidate] Triggered by ${name} for collection: ${data.id}`)
  } catch (error) {
    console.error(`[Cache Revalidate] Failed to revalidate for ${name}:`, error)
  }
}

export const config: SubscriberConfig = {
  event: [
    "collection.created",
    "collection.updated",
    "collection.deleted",
  ],
}
