import type { MedusaRequest, MedusaResponse } from "@medusajs/framework/http"
import { BANNER_MODULE } from "../../../modules/banner"

type BannerResponse = {
  banners: Array<{
    id: string
    title: string
    description?: string | null
    image_url?: string | null
    link: string
    link_text?: string | null
    is_active: boolean
    order: number
  }>
}

export const GET = async (
  req: MedusaRequest,
  res: MedusaResponse
) => {
  try {
    const bannerService = req.scope.resolve(BANNER_MODULE)

    // Fetch only active banners, ordered by order field
    const banners = await bannerService.listBanners(
      {
        is_active: true,
      },
      {
        order: {
          order: "ASC",
        },
      }
    )

    res.json({
      banners: (banners || [])
        .filter((banner) => !!banner.image_url)
        .map((banner) => ({
          id: banner.id,
          title: banner.title,
          description: banner.description,
          image_url: banner.image_url,
          link: banner.link,
          link_text: banner.link_text,
          is_active: banner.is_active,
          order: banner.order,
        })),
    } as BannerResponse)
  } catch (error) {
    console.error("Error fetching banners:", error)
    res.status(500).json({
      message: "Error fetching banners",
      error: error instanceof Error ? error.message : "Unknown error",
    })
  }
}
