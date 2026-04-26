import { model } from "@medusajs/framework/utils"

const HomepageSection = model.define("homepage_section", {
  id: model.id().primaryKey(),
  key: model.text(), // unique identifier e.g., "hero_banner", "featured_products"
  title: model.text(), // human-readable title e.g., "Main Hero Banner"
  type: model.enum([
    "hero_banner",
    "featured_products",
    "single_category_grid",
    "categories_grid",
    "newsletter",
    "custom_html"
  ]),
  config: model.json().nullable(), // For storing options like 'limit', 'backgroundColor', 'collection_id', etc.
  is_active: model.boolean().default(true),
  order: model.number().default(0),
})

export default HomepageSection
