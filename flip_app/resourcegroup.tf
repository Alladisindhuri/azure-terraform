resource "azurerm_resource_group" "flip_network_rg" {
  name     = "flip_network_rg"
  location = "East US"

  tags = {
    Env   = "prod"
    Owner = "Sindhuri"
  }
}

resource "azurerm_resource_group" "flip_computeandstorage_rg" {
  name     = "flip_computeandstorage_rg"
  location = "East US"

  tags = {
    Env   = "prod"
    Owner = "Sindhuri"
  }
}
