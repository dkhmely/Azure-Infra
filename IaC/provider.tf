terraform {
  required_providers {
    azurerm = {
      version = "=4.41.0"
      source  = "hashicorp/azurerm"
    }
  }
    backend "azurerm" {
  }

}

provider "azurerm" {
  features {}
}