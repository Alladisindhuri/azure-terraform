resource "azurerm_virtual_network" "Flip_vnet" {
  name                = "Flip_vnet"
  address_space       = ["172.17.0.0/16"]
  location            = "East US"
  resource_group_name = azurerm_resource_group.flip_network_rg.name

  tags = {
    Env   = "prod"
    Owner = "Sindhuri"
  }
}