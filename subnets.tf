resource "azurerm_subnet" "flip_subnet" {
  name                 = "flip_subnet"
  resource_group_name  = azurerm_resource_group.flip_network_rg.name
  virtual_network_name = azurerm_virtual_network.flip_vnet.name
  address_prefixes     = ["172.16.2.0/29"]
}