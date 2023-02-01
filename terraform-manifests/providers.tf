terraform {
  required_version = ">= 1.1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.89.0"
    }
  }

  backend "azurerm" {
    container_name       = "terraform-state"
  }  
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
  subscription_id            = "subscription_id"
  client_id                  = var.client_id 
  client_secret              = var.client_secret
  tenant_id                  = var.tenant_id 
}