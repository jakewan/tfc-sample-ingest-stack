provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "beacons" {
  name     = "rg-beacons"
  location = "West US"
}
