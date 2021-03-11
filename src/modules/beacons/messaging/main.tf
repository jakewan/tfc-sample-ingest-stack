resource "azurerm_eventhub_namespace" "beacons" {
   name                = "nsBeacons-${var.environment_name}"
   location            = var.location
   resource_group_name = var.resource_group_name
   sku                 = "Standard"
 }

resource "azurerm_eventhub" "eventhub_1" {
    name = "eventhub-${var.environment_name}-1"
}
