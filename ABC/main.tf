terraform {
  backend "azurerm" {
    resource_group_name  = "RM"
    storage_account_name = "backendstorage23"
    container_name       = "state"
    key                  = "terraform.tfstate"
  }
}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}