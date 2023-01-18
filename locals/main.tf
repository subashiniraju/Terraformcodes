locals {
  name_prefix="db"
}


resource "azurerm_resource_group" "example" {
  name     ="${local.name_prefix}-${var.rgname}"
  location = var.loc
}

resource "azurerm_virtual_network" "example" {
  name                ="${local.name_prefix}-${var.vnetname}"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example1" {
  name                 ="${local.name_prefix}-${var.subnet1}"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}
resource "azurerm_subnet" "example2" {
  name                 ="${local.name_prefix}-${var.subnet2}"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]
}