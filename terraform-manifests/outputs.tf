output "location" {
  value = data.azurerm_resource_group.tf_rg.location
}

output "resource_group_id" {
  value = data.azurerm_resource_group.tf_rg.id
}

output "resource_group_name" {
  value = data.azurerm_resource_group.tf_rg.name
}
