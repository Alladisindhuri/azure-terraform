resource "azurerm_network_security_group" "Flip_nsg" {
  name                = "Flip_nsg"
  location            = "East US"
  resource_group_name = azurerm_resource_group.flip_network_rg.name

  tags = {
    Env   = "prod"
    Owner = "Sindhuri"
  }
}

resource "azurerm_network_security_rule" "allow_ssh" {
  name                        = "deny-ssh"
  priority                    = 1000
  direction                   = "Inbound"
  access                      = "Deny"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.flip_network_rg.name
  network_security_group_name = azurerm_network_security_group.Flip_nsg.name
}
