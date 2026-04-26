import { defineWidgetConfig } from "@medusajs/admin-sdk"
import { useEffect } from "react"

/**
 * Login Branding Widget
 * 
 * Replaces the default "Bem-vindo ao Medusa" heading with "Super Raça"
 * on the admin login page using DOM manipulation.
 */
const LoginBranding = () => {
  useEffect(() => {
    // Find and replace the Medusa heading text
    const headings = document.querySelectorAll("h1, h2, h3")
    headings.forEach((h) => {
      if (
        h.textContent?.includes("Medusa") ||
        h.textContent?.includes("Welcome to Medusa")
      ) {
        h.textContent = "Super Raça"
      }
    })

    // Find and replace the subtitle text
    const paragraphs = document.querySelectorAll("p")
    paragraphs.forEach((p) => {
      if (
        p.textContent?.includes("Faça login para acessar a área da conta") ||
        p.textContent?.includes("Log in to access the dashboard")
      ) {
        p.textContent = "Faça login no painel administrativo"
      }
    })
  }, [])

  return null
}

export const config = defineWidgetConfig({
  zone: "login.before",
})

export default LoginBranding
