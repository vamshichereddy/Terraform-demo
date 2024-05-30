# Use required_providers block to set the Azure Provider source and version being used

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.74.0"
    }
  }
}

# Configure the Microsoft Azure Provider

provider "azurerm" {
  features {}

}

