resource "azurerm_resource_group" "skillup_network_rg" {
  name     = "skillup_network_rg"
  location = "East US"

  tags = {
    Env = "prod"
    Owner     = "Sindhuri"
  }
}

resource "azurerm_resource_group" "skillup_computeandstorage_rg" {
  name     = "skillup_computeandstorage_rg"
  location = "East US"

  tags = {
    Env = "prod"
    Owner     = "Sindhuri"
  }
}
