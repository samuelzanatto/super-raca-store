import { MedusaRequest, MedusaResponse } from "@medusajs/framework/http"
import { HOMEPAGE_SECTION_MODULE } from "../../../../modules/homepage_section"
import HomepageSectionModuleService from "../../../../modules/homepage_section/service"

export const POST = async (req: MedusaRequest, res: MedusaResponse) => {
  const homepageSectionModuleService: HomepageSectionModuleService = req.scope.resolve(
    HOMEPAGE_SECTION_MODULE
  )

  const { id } = req.params

  const section = await homepageSectionModuleService.updateHomepageSections(
    {
      id,
      ...(req.body as any)
    }
  )

  res.json({ section })
}

export const DELETE = async (req: MedusaRequest, res: MedusaResponse) => {
  const homepageSectionModuleService: HomepageSectionModuleService = req.scope.resolve(
    HOMEPAGE_SECTION_MODULE
  )

  const { id } = req.params

  await homepageSectionModuleService.deleteHomepageSections(id)

  res.status(200).json({ id, object: "homepage_section", deleted: true })
}
