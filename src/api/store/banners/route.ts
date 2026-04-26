import type { MedusaRequest, MedusaResponse } from "@medusajs/framework/http"
import { BANNER_MODULE } from "../../../modules/banner"

type BannerResponse = {
  banners: any[]
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
      banners: banners || [],
    } as BannerResponse)
  } catch (error) {
    console.error("Error fetching banners:", error)
    res.status(500).json({
      message: "Error fetching banners",
      error: error instanceof Error ? error.message : "Unknown error",
    })
  }
}
