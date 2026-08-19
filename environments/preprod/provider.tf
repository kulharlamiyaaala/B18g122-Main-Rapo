terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "sttfstateb18g122"
    container_name       = "preprod-tfstate"
    key                  = "preprod.terraform.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
}


