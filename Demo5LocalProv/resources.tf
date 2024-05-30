resource "azurerm_container_registry" "acr1" {
  name                = "vamshichcontainerreg"
  resource_group_name = "TerraformRG"
  location            = "East US"
  sku                 = "Standard"
  admin_enabled       = false
}

resource "null_resource" "image" {
  triggers = {
     myacr = azurerm_container_registry.acr1.id 
  }
  provisioner "local-exec" {
    command     = <<-EOT
        az acr import --name ${azurerm_container_registry.acr1.name} --source docker.io/library/hello-world --image welcomeimage:1.0
        az acr import --name ${azurerm_container_registry.acr1.name} --source docker.io/library/ubuntu --image myubuntu:1.0
    EOT
  }
}

