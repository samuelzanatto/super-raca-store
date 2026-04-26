import { model } from "@medusajs/framework/utils"

const Banner = model.define("banner", {
  id: model.id().primaryKey(),
  title: model.text(),
  description: model.text().nullable(),
  image_url: model.text().nullable(),
  image_data: model.text().nullable(), // Armazena imagem em base64
  link: model.text(),
  link_text: model.text().nullable(),
  is_active: model.boolean().default(true),
  order: model.number().default(0),
})

export default Banner
