terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-001"
    storage_account_name = "tfstateabhilash2026"
    container_name       = "dev-state"
    key                  = "dev.tfstate"
  }
}