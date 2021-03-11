resource "azurerm_eventhub_namespace" "beacons" {
  name                = "nsBeacons-${var.environment_name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
}

resource "azurerm_eventhub" "eventhub_foo" {
  name                = "eventhub-${var.environment_name}-foo"
  resource_group_name = var.resource_group_name
  namespace_name      = azurerm_eventhub_namespace.beacons.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "eventhub_bar" {
  name                = "eventhub-${var.environment_name}-bar"
  resource_group_name = var.resource_group_name
  namespace_name      = azurerm_eventhub_namespace.beacons.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "eventhub_baz" {
  name                = "eventhub-${var.environment_name}-baz"
  resource_group_name = var.resource_group_name
  namespace_name      = azurerm_eventhub_namespace.beacons.name
  partition_count     = 2
  message_retention   = 1
}

resource "azurerm_eventhub" "eventhub_quux" {
  name                = "eventhub-${var.environment_name}-quux"
  resource_group_name = var.resource_group_name
  namespace_name      = azurerm_eventhub_namespace.beacons.name
  partition_count     = 2
  message_retention   = 1
}
