resource "azurerm_resource_group" "flip-network-rg" {
  name     = "flip-network-rg"
  location = "East US"

  tags = {
    Env = "prod"
    Owner     = "Sindhuri"
  }
}

resource "azurerm_resource_group" "flip-computeandstorage-rg" {
  name     = "flip-computeandstorage-rg"
  location = "East US"

  tags = {
    Env = "prod"
    Owner     = "Sindhuri"
  }
}
