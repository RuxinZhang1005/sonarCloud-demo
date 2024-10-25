# Define the Azure provider
provider "azurerm" {
  features {}
}

# Resource group definition
resource "azurerm_resource_group" "example_rg" {
  name     = "example-resources"
  location = "East US"
}



