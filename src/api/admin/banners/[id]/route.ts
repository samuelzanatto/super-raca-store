import type { MedusaRequest, MedusaResponse } from "@medusajs/framework/http"
import { BANNER_MODULE } from "../../../../modules/banner"

type UpdateBannerRequest = {
  title?: string
  description?: string
  image_url?: string
  link?: string
  link_text?: string
  is_active?: boolean
  order?: number
}

export const GET = async (
  req: MedusaRequest,
  res: MedusaResponse
) => {
  try {
    const { id } = req.params
    const bannerService = req.scope.resolve(BANNER_MODULE)

    const banner = await bannerService.retrieveBanner(id)

    if (!banner) {
      return res.status(404).json({ message: "Banner not found" })
    }

    res.json({ banner })
  } catch (error) {
    console.error("Error fetching banner:", error)
    res.status(500).json({
      message: "Error fetching banner",
      error: error instanceof Error ? error.message : "Unknown error",
    })
  }
}

export const PUT = async (
  req: MedusaRequest<UpdateBannerRequest>,
  res: MedusaResponse
) => {
  try {
    const { id } = req.params
    const bannerService = req.scope.resolve(BANNER_MODULE)
    const payload = { ...req.body }
    if (typeof payload.image_url === "string") {
      payload.image_url = payload.image_url.trim()
    }

    const banners = await bannerService.updateBanners([
      {
        id,
        ...payload,
      },
    ])

    const banner = Array.isArray(banners) ? banners[0] : banners

    res.json({ banner })
  } catch (error) {
    console.error("Error updating banner:", error)
    res.status(400).json({
      message: "Error updating banner",
      error: error instanceof Error ? error.message : "Unknown error",
    })
  }
}

export const DELETE = async (
  req: MedusaRequest,
  res: MedusaResponse
) => {
  try {
    const { id } = req.params
    const bannerService = req.scope.resolve(BANNER_MODULE)

    await bannerService.deleteBanners([id])

    res.status(204).send()
  } catch (error) {
    console.error("Error deleting banner:", error)
    res.status(400).json({
      message: "Error deleting banner",
      error: error instanceof Error ? error.message : "Unknown error",
    })
  }
}
