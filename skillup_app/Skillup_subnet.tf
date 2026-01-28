resource "azurerm_subnet" "Skillup_subnet" {
  name                 = "Skillup_subnet"
  resource_group_name  = azurerm_resource_group.skillup_network_rg.name
  virtual_network_name = azurerm_virtual_network.Skillup_vnet.name
  address_prefixes     = ["172.18.0.0/24"]
}

resource "azurerm_subnet_network_security_group_association" "Skillup_nsg" {
  subnet_id                 = azurerm_subnet.Skillup_subnet.id
  network_security_group_id = azurerm_network_security_group.Skillup_nsg.id
}