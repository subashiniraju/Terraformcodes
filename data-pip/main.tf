data "azurerm_resource_group" "rg3" {
  name     = "vnetrg1"
}

resource "azurerm_public_ip" "rg3" {
  name                = "acceptanceTestPublicIp1"
  resource_group_name = data.azurerm_resource_group.rg3.name
  location            = data.azurerm_resource_group.rg3.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}