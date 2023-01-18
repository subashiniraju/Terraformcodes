provider "azurerm" {
  features {}

  subscription_id = "d01da288-79d1-47ef-8836-a6827f47ea4e"
  client_id       = "d8e9a0e4-3587-48d1-a7eb-d40c56e10f76"
  client_secret   = "gI_8Q~NvyQYwDejfcfllRgS9L.OoLfUPSLXBxcpV"
  tenant_id       = "12fb76c3-d627-4d28-a386-afa82825d3bd"
}
terraform {
  backend "azurerm" {
    storage_account_name = "disknamec9309a353abf587d"
    container_name       = "container1"
    key                  = "prod.terraform.tfstate"
    access_key = "q2G1pVqd+86s214WJShYvT7KmC/g4aFy12tI6gcPTm6r5CkG0LWhC5GNK69M2+TW6TMMzKbeLOnU+AStFwJBBw=="
  }
}