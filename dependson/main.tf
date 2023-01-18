resource "azurerm_resource_group" "rg5" {
  name     = "examplerg"
  location = "West Europe"
}

resource "azurerm_public_ip" "rg5" {
  name                = "acceptanceTestPublicIp"
  resource_group_name = azurerm_resource_group.rg5.name
  location            = azurerm_resource_group.rg5.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
  depends_on=[azurerm_managed_disk.example5]
}

  resource "azurerm_managed_disk" "example5" {
  name                 = "acctestmd"
  location             = azurerm_resource_group.rg5.location
  resource_group_name  = azurerm_resource_group.rg5.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

  tags = {
    environment = "staging"
  }
}
resource "azurerm_managed_disk" "example1" {
  name                 = "acctestmd"
  location             = azurerm_resource_group.rg5.location
  resource_group_name  = azurerm_resource_group.rg5.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

  tags = {
    environment = "staging"
  }
}