import path from "path"
import { loadEnv, defineConfig } from '@medusajs/framework/utils'

loadEnv(process.env.NODE_ENV || 'development', process.cwd())
loadEnv(process.env.NODE_ENV || 'development', path.resolve(process.cwd(), ".."))

const adminMaxUploadFileSize = Number(
  process.env.MEDUSA_ADMIN_MAX_UPLOAD_FILE_SIZE || 10 * 1024 * 1024
)

const backendUrl = process.env.MEDUSA_BACKEND_URL || "https://api.superraca.com"
const storefrontUrl = process.env.STOREFRONT_URL || "https://store.superraca.com"
const storeCors = process.env.STORE_CORS || storefrontUrl
const adminCors = process.env.ADMIN_CORS || backendUrl
const authCors = process.env.AUTH_CORS || `${storefrontUrl},${backendUrl}`

export default defineConfig({
  projectConfig: {
    databaseUrl: process.env.DATABASE_URL,
    redisUrl: process.env.REDIS_URL,
    http: {
      storeCors,
      adminCors,
      authCors,
      jwtSecret: process.env.JWT_SECRET || "supersecret",
      cookieSecret: process.env.COOKIE_SECRET || "supersecret",
    }
  },
  modules: [
    {
      key: "banner",
      resolve: "./src/modules/banner",
    },
    {
      key: "homepage_section",
      resolve: "./src/modules/homepage_section",
    },
    {
      resolve: "@medusajs/medusa/translation",
    },
    {
      resolve: "@medusajs/medusa/fulfillment",
      options: {
        providers: [
          {
            resolve: "@medusajs/medusa/fulfillment-manual",
            id: "manual",
          },
          {
            resolve: "./src/modules/melhor-envio-fulfillment",
            id: "melhor-envio",
            options: {
              client_id: process.env.MELHOR_ENVIO_CLIENT_ID,
              client_secret: process.env.MELHOR_ENVIO_CLIENT_SECRET,
              redirect_uri: process.env.MELHOR_ENVIO_REDIRECT_URI,
              token: process.env.MELHOR_ENVIO_TOKEN,
              refresh_token: process.env.MELHOR_ENVIO_REFRESH_TOKEN,
              from_postal_code: process.env.MELHOR_ENVIO_FROM_POSTAL_CODE,
              sandbox: process.env.MELHOR_ENVIO_SANDBOX !== "false",
              user_agent: process.env.MELHOR_ENVIO_USER_AGENT,
              default_weight: process.env.MELHOR_ENVIO_DEFAULT_WEIGHT || "300",
              default_height: process.env.MELHOR_ENVIO_DEFAULT_HEIGHT || "4",
              default_width: process.env.MELHOR_ENVIO_DEFAULT_WIDTH || "16",
              default_length: process.env.MELHOR_ENVIO_DEFAULT_LENGTH || "24",
              weight_unit: process.env.MELHOR_ENVIO_WEIGHT_UNIT || "g",
              timeout_ms: process.env.MELHOR_ENVIO_TIMEOUT_MS || "10000",
              retries: process.env.MELHOR_ENVIO_RETRIES || "2",
              auto_purchase: process.env.MELHOR_ENVIO_AUTO_PURCHASE === "true",
              print_mode: process.env.MELHOR_ENVIO_PRINT_MODE || "public",
            },
          },
        ],
      },
    },
    {
      resolve: "@medusajs/medusa/payment",
      options: {
        providers: [
          {
            resolve: "@medusajs/medusa/payment-stripe",
            id: "stripe",
            options: {
              apiKey: process.env.STRIPE_API_KEY,
              webhookSecret: process.env.STRIPE_WEBHOOK_SECRET,
              capture: process.env.STRIPE_CAPTURE !== "false",
              automatic_payment_methods: true,
            },
          },
        ],
      },
    },
    {
      resolve: "@medusajs/medusa/notification",
      options: {
        providers: [
          {
            resolve: "./src/modules/resend",
            id: "resend",
            options: {
              channels: ["email"],
              api_key: process.env.RESEND_API_KEY,
              from: process.env.RESEND_FROM_EMAIL,
            },
          },
        ],
      },
    },
    {
      resolve: "@medusajs/medusa/file",
      options: {
        providers: [
          {
            resolve: "@medusajs/medusa/file-s3",
            id: "s3",
            options: {
              file_url: process.env.S3_FILE_URL,
              access_key_id: process.env.S3_ACCESS_KEY_ID,
              secret_access_key: process.env.S3_SECRET_ACCESS_KEY,
              region: process.env.S3_REGION,
              bucket: process.env.S3_BUCKET,
              endpoint: process.env.S3_ENDPOINT,
              additional_client_config: {
                forcePathStyle: true,
                requestChecksumCalculation: "WHEN_REQUIRED",
              },
            },
          },
        ],
      },
    },
  ],
  featureFlags: {
    translation: true,
  },
  admin: {
    backendUrl,
    disable: process.env.DISABLE_MEDUSA_ADMIN === "true",
    maxUploadFileSize: adminMaxUploadFileSize,
  },
})
