resource "azurerm_route_table" "Flip_app_rt" {
  name                = "Flip_app_rt"
  location            = azurerm_resource_group.flip_network_rg.location
  resource_group_name = azurerm_resource_group.flip_network_rg.name

  bgp_route_propagation_enabled = false

  tags = {
    Env   = "prod"
    Owner = "Sindhuri"
  }

}

# Route Rule: Spoke → Hub via Firewall / NVA
resource "azurerm_route" "Flip_to_Skillup_via_nva" {
  name                = "Flip_to_Skillup_via_nva"
  resource_group_name = azurerm_resource_group.flip_network_rg.name
  route_table_name    = azurerm_route_table.Flip_app_rt.name

  address_prefix         = "172.18.0.0/24"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = "172.16.0.5"
  depends_on             = [azurerm_route_table.Flip_app_rt]
}

# Subnet Association
resource "azurerm_subnet_route_table_association" "flip_app_rt_assoc" {
  subnet_id      = azurerm_subnet.Flip_subnet.id
  route_table_id = azurerm_route_table.Flip_app_rt.id
}
