provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "beacons" {
  name     = "rg-beacons-${var.environment_name}"
  location = "West US"
}

module "beacons_eventhubs" {
  source = "./beacons_eventhubs"
}
