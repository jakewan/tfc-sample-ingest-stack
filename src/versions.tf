terraform {
  backend "remote" {
    organization = "cbsi-vde-proto"
    workspaces {
      prefix = "sample-injest-stack-"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.50.0"
    }
  }
  required_version = ">= 0.14.0"
}
