provider "azurerm" {
  features {}

  subscription_id = "d01da288-79d1-47ef-8836-a6827f47ea4e"
  client_id       = "d8e9a0e4-3587-48d1-a7eb-d40c56e10f76"
  client_secret   = "gI_8Q~NvyQYwDejfcfllRgS9L.OoLfUPSLXBxcpV"
  tenant_id       = "12fb76c3-d627-4d28-a386-afa82825d3bd"
}
resource "azurerm_resource_group" "example" {
  name     = "terraformrg"
  location = "West Europe"
  tags = {
    environment = "prod"
    tier = "backend"
  }
}
resource "azurerm_public_ip" "example"{
  name = "pip1"
  resource_group_name = azurerm_resource_group.example.name
  location = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}

