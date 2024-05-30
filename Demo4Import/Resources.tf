resource "azurerm_virtual_network" "vnetnew" {
  name                = "vamshichvnetnew"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = "TerraformRG"
}






