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