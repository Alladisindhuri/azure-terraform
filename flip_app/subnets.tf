
resource "azurerm_subnet" "Flip_subnet" {
  name                 = "Flip_subnet"
  resource_group_name  = azurerm_resource_group.flip_network_rg.name
  virtual_network_name = azurerm_virtual_network.Flip_vnet.name
  address_prefixes     = ["172.17.0.0/24"]
}

resource "azurerm_subnet_network_security_group_association" "Flip_subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.Flip_subnet.id
  network_security_group_id = azurerm_network_security_group.Flip_nsg.id
}

