# Define the Azure provider
provider "azurerm" {
  features {}
}

# Resource group definition
resource "azurerm_resource_group" "example_rg" {
  name     = "example-resources"
  location = "East US"
}


# Storage account definition
resource "azurerm_storage_account" "example_sa" {
  name                     = "examplestorageacct"
  resource_group_name      = azurerm_resource_group.example_rg.name
  location                 = azurerm_resource_group.example_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"  # Locally redundant storage
}
