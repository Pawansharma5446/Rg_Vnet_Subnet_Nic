terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    features {}
    subscription_id = "61f220b6-5e66-44f2-a125-be948dad3988"
}
