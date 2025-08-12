terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "deployment" {
  name     = "${local.prefix}-loadgenerator-rg"
  location = var.location
  tags     = merge(local.default_tags, { "LastDeployedAt" = timestamp() })
}
