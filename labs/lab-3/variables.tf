#Input Variable definations

variable "location" {
  description = "The Azure region in which all resource groups would be created"
  type = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type = string
}

variable "storage_account_tier" {
  description = "The Account Tier"
  type = string
}

variable "storage_account_replication_type" {
  description = "Storage Account Replication Type"
  type = string
}
variable "storage_account_kind" {
  description = "Storage Account Kind"
  type = string
}
variable "static_website_index_document" {
  description = "Static Website Index Document"
  type = string
}
variable "static_website_error_404_document" {
  description = "Static Website Error 404 Document"
  type = string
}
