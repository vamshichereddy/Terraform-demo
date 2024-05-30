# Create Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "vamshichvnet${terraform.workspace}"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = "TerraformRG"
}
 
# Create Subnet 
resource "azurerm_subnet" "subnet" {
  name                 = "vamshichsubnet${terraform.workspace}"
  resource_group_name  = "TerraformRG"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

