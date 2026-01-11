resource "azurerm_network_security_group" "flip_nsg" {
  name                = "flip_nsg"
  location            = "East US"
  resource_group_name = azurerm_resource_group.flip_network_rg.name

  tags = {
    Env   = "prod"
    Owner = "Sindhuri"
  }
}

resource "azurerm_network_security_rule" "allow_ssh" {
  name                        = "allow-ssh"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.flip_network_rg.name
  network_security_group_name = azurerm_network_security_group.flip_nsg.name
}
