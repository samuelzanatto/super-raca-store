import HomepageSectionModuleService from "./service"
import { Module } from "@medusajs/framework/utils"

export const HOMEPAGE_SECTION_MODULE = "homepage_section"

export default Module(HOMEPAGE_SECTION_MODULE, {
  service: HomepageSectionModuleService,
})
