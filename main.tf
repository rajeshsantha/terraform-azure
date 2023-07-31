# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "eastus"
}

resource "azurerm_data_factory" "adfbytf" {
  name                = "adf-by-tf-0001"
  location            = var.location
  resource_group_name = var.rsgname
}
