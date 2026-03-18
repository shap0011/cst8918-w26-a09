# terraform {
#   required_version = ">= 1.5.0"

#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~> 3.117"
#     }
#   }
# }

# provider "azurerm" {
#   features {}
# }

# resource "azurerm_resource_group" "rg" {
#   name     = "rg-cst8918-a09"
#   location = "Canada Central"
# }

# resource "azurerm_storage_account" "storage" {
#   name                     = "cst8918a09storage01"
#   resource_group_name      = azurerm_resource_group.rg.name
#   location                 = azurerm_resource_group.rg.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

terraform {
  required_version = ">= 1.5.0"
}

resource "terraform_data" "example" {
input = "cst8918-a09"
}

# resource "terraform_data" "example" { input = "cst8918-a09"
# }

#--
