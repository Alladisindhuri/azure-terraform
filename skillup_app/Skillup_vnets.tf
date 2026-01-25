resource "azurerm_virtual_network" "skillup_vnet" {
  name                = "skillup_vnet"
  address_space       = ["172.16.3.0/24"]
  location            = "East US"
  resource_group_name = azurerm_resource_group.skillup_network_rg.name
  tags = {
    Env   = "prod"
    Owner = "Sindhuri"
  }
}