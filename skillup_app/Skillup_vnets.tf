resource "azurerm_virtual_network" "Skillup_vnet" {
  name                = "Skillup_vnet"
  address_space       = ["172.18.0.0/16"]
  location            = "East US"
  resource_group_name = azurerm_resource_group.skillup_network_rg.name
  tags = {
    Env   = "prod"
    Owner = "Sindhuri"
  }
}