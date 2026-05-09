import { defineMiddlewares } from "@medusajs/medusa"

const adminMaxUploadFileSize = Number(
  process.env.MEDUSA_ADMIN_MAX_UPLOAD_FILE_SIZE || 10 * 1024 * 1024
)

export default defineMiddlewares({
  routes: [
    {
      matcher: "/admin/uploads",
      method: "POST",
      bodyParser: {
        sizeLimit: adminMaxUploadFileSize,
      },
    },
  ],
})
