# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
variable "client_secret" {
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
    #version = "~> 2.46.0"
    features {}

    subscription_id   = "c02ed9ce-f7db-4c51-9614-f1701aa93955"
    tenant_id         = "1e355c04-e0a4-42ed-8e2d-7351591f0ef1"
    client_id         = "29eaaa86-8785-4704-8758-063efd1124bd"
    client_secret     = var.client_secret

  }  

module "tasktwo" {

  source = "../"
}