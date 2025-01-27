#Output Variable Definations

output "resource_group_id" {
  description = "resource group id"
  value = azurerm_resource_group.my_demo.id
}
output "resource_group_name" {
  description = "resource group name"
  value = azurerm_resource_group.my_demo.name
}
output "resource_group_location" {
  description = "resource group location"
  value = azurerm_resource_group.my_demo.location
}
output "storage_account_id" {
  description = "storage account id"
  value = azurerm_storage_account.storage_account.id
}
output "storage_account_name" {
  description = "storage account name"
  value = azurerm_storage_account.storage_account.name
}


