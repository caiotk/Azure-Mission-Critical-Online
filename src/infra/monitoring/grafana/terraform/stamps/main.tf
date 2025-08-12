terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }

  // using azure storage for storing backend state for terraform
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
