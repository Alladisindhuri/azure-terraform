resource "azurerm_virtual_network" "flip_vnet" {
  name                = "flip_vnet"
  address_space       = ["172.16.2.0/24"]
  location            = "East US"
  resource_group_name = azurerm_resource_group.flip_network_rg.name

  tags = {
    Env   = "prod"
    Owner = "Sindhuri"
  }
}