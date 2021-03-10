provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "beacons" {
  name     = "rg-beacons-${var.environment_name}"
  location = "West US"
}

resource "azurerm_eventhub_namespace" "beacons" {
  name                = "nsBeacons-${var.environment_name}"
  location            = azurerm_resource_group.beacons.location
  resource_group_name = azurerm_resource_group.beacons.name
  sku                 = "Standard"
}

resource "azurerm_eventhub" "name" {
  name                = "foo-${var.environment_name}"
  location            = azurerm_resource_group.beacons.location
  resource_group_name = azurerm_resource_group.beacons.name
  partition_count     = 2
  message_retention   = 1
}
