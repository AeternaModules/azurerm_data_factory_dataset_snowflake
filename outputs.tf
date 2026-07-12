output "data_factory_dataset_snowflakes_additional_properties" {
  description = "Map of additional_properties values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.additional_properties }
}
output "data_factory_dataset_snowflakes_annotations" {
  description = "Map of annotations values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.annotations }
}
output "data_factory_dataset_snowflakes_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.data_factory_id }
}
output "data_factory_dataset_snowflakes_description" {
  description = "Map of description values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.description }
}
output "data_factory_dataset_snowflakes_folder" {
  description = "Map of folder values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.folder }
}
output "data_factory_dataset_snowflakes_linked_service_name" {
  description = "Map of linked_service_name values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.linked_service_name }
}
output "data_factory_dataset_snowflakes_name" {
  description = "Map of name values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.name }
}
output "data_factory_dataset_snowflakes_parameters" {
  description = "Map of parameters values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.parameters }
}
output "data_factory_dataset_snowflakes_schema_column" {
  description = "Map of schema_column values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.schema_column }
}
output "data_factory_dataset_snowflakes_schema_name" {
  description = "Map of schema_name values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.schema_name }
}
output "data_factory_dataset_snowflakes_table_name" {
  description = "Map of table_name values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.table_name }
}

