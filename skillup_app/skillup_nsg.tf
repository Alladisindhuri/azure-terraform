resource "azurerm_network_security_group" "Skillup_nsg" {
  name                = "Skillup_nsg"
  location            = "East US"
  resource_group_name = azurerm_resource_group.skillup_network_rg.name

  tags = {
    Env   = "prod"
    Owner = "Sindhuri"
  }
}

resource "azurerm_network_security_rule" "allow_ssh" {
  name                        = "deny_all_traffic"
  priority                    = 1000
  direction                   = "Inbound"
  access                      = "Deny"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.skillup_network_rg.name
  network_security_group_name = azurerm_network_security_group.Skillup_nsg.name
}

