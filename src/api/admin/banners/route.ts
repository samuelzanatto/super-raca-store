import type { MedusaRequest, MedusaResponse } from "@medusajs/framework/http"
import { BANNER_MODULE } from "../../../modules/banner"

type CreateBannerRequest = {
  title: string
  description?: string
  image_url: string
  link: string
  link_text?: string
  is_active?: boolean
  order?: number
}

export const POST = async (
  req: MedusaRequest<CreateBannerRequest>,
  res: MedusaResponse
) => {
  try {
    const bannerService = req.scope.resolve(BANNER_MODULE)

    const {
      title,
      description,
      image_url,
      link,
      link_text,
      is_active = true,
      order = 0,
    } = req.body

    const banner = await bannerService.createBanners({
      title,
      description,
      image_url,
      link,
      link_text,
      is_active,
      order,
    })

    res.status(201).json({ banner })
  } catch (error) {
    console.error("Error creating banner:", error)
    res.status(400).json({
      message: "Error creating banner",
      error: error instanceof Error ? error.message : "Unknown error",
    })
  }
}

export const GET = async (
  req: MedusaRequest,
  res: MedusaResponse
) => {
  try {
    const bannerService = req.scope.resolve(BANNER_MODULE)

    const banners = await bannerService.listBanners()

    res.json({
      banners: banners || [],
      count: banners?.length || 0,
    })
  } catch (error) {
    console.error("Error fetching banners:", error)
    res.status(500).json({
      message: "Error fetching banners",
      error: error instanceof Error ? error.message : "Unknown error",
    })
  }
}
