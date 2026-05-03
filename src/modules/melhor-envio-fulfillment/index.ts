import {
  ModuleProvider,
  Modules,
} from "@medusajs/framework/utils"
import MelhorEnvioFulfillmentProviderService from "../../providers/melhor-envio"

export default ModuleProvider(Modules.FULFILLMENT, {
  services: [MelhorEnvioFulfillmentProviderService],
})
