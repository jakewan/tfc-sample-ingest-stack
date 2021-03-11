provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "beacons" {
  name     = "rg-beacons-${var.environment_name}"
  location = "West US"
}

module "beacons_messaging" {
  source = "./modules/beacons/messaging"
  environment_name = var.environment_name
  location = azurerm_resource_group.beacons.location
  resource_group_name = azurerm_resource_group.beacons.name
}
