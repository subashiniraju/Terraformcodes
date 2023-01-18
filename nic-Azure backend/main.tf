resource "azurerm_resource_group" "example2" {
  name     = "example-resources1"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example2" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example2.location
  resource_group_name = azurerm_resource_group.example2.name
}

resource "azurerm_subnet" "example2" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.example2.name
  virtual_network_name = azurerm_virtual_network.example2.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "example2" {
  name                = "example-nic"
  location            = azurerm_resource_group.example2.location
  resource_group_name = azurerm_resource_group.example2.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example2.id
    private_ip_address_allocation = "Dynamic"
  }
}