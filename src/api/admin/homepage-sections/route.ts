import { MedusaRequest, MedusaResponse } from "@medusajs/framework/http"
import { HOMEPAGE_SECTION_MODULE } from "../../../modules/homepage_section"
import HomepageSectionModuleService from "../../../modules/homepage_section/service"

export const GET = async (req: MedusaRequest, res: MedusaResponse) => {
  const homepageSectionModuleService: HomepageSectionModuleService = req.scope.resolve(
    HOMEPAGE_SECTION_MODULE
  )

  const sections = await homepageSectionModuleService.listHomepageSections({}, {
    order: { order: "ASC" },
  })

  res.json({ sections })
}

export const POST = async (req: MedusaRequest, res: MedusaResponse) => {
  const homepageSectionModuleService: HomepageSectionModuleService = req.scope.resolve(
    HOMEPAGE_SECTION_MODULE
  )

  const section = await homepageSectionModuleService.createHomepageSections(
    req.body as any
  )

  res.json({ section })
}
