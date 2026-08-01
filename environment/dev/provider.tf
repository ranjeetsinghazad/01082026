terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }
}

provider "azurerm" {
  features{}
  subscription_id = "b7fb90a2-d10e-4015-8d7f-c6654cadc4b6"
}
