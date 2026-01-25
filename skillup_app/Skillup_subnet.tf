resource "azurerm_subnet" "skillup_subnet" {
  name                 = "skillup_subnet"
  resource_group_name  = azurerm_resource_group.skillup_network_rg.name
  virtual_network_name = azurerm_virtual_network.skillup_vnet.name
  address_prefixes     = ["172.16.3.0/29"]
}

resource "azurerm_subnet_network_security_group_association" "skillup_nsg" {
  subnet_id                 = azurerm_subnet.skillup_subnet.id
  network_security_group_id = azurerm_network_security_group.skillup_nsg.id
}