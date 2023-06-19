provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "pythonresource" {
  name     = "pythonazure-resource-group"
  location = "West US"
}

resource "azurerm_container_registry" "pythonacr" {
  name                = "pythonacr"
  resource_group_name = azurerm_resource_group.pythonresource.name
  location            = azurerm_resource_group.pythonresource.location
  sku                 = "Basic"
  admin_enabled       = false
}