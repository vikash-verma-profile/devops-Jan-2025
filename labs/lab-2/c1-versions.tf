# Terrafroms setting block

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

#provider block
provider "azurerm" {
  subscription_id = "94b552fb-af73-409b-84c0-699059315a6d"
  features {

  }
}

#create a resource group

resource "azurerm_resource_group" "my_demo" {
  location = var.azure_region
  name     = local.name
}

#Resource block

resource "azurerm_virtual_network" "myvnet" {
  name                = "myvnet-1"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.my_demo.location
  resource_group_name = azurerm_resource_group.my_demo.name
}

#Input variable
variable "azure_region" {
  default     = "eastus"
  description = "Azure Region where resources to be created"
  type        = string
}

#Input variable
variable "business_unit" {
  description = "business-unit"
  type        = string
}
#Input variable
variable "environment_name" {
  default     = "dev"
  description = "environment"
  type        = string
}
#Output variable
output "azurerm_resource_group_id" {
  description = "My Azure Resource Group Id"
  value       = azurerm_resource_group.my_demo.id
}

#local values
locals {
  name = "${var.business_unit}-${var.environment_name}"
}
