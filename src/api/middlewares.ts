import { defineMiddlewares } from "@medusajs/medusa"

export default defineMiddlewares({
  routes: [
    {
      matcher: "/admin/uploads",
      method: "POST",
      bodyParser: {
        sizeLimit: 2 * 1024 * 1024, // 2MB
      },
    },
  ],
})
