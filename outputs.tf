output "data_factory_dataset_snowflakes" {
  description = "All data_factory_dataset_snowflake resources"
  value       = azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes
}
output "data_factory_dataset_snowflakes_additional_properties" {
  description = "List of additional_properties values across all data_factory_dataset_snowflakes"
  value       = [for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : v.additional_properties]
}
output "data_factory_dataset_snowflakes_annotations" {
  description = "List of annotations values across all data_factory_dataset_snowflakes"
  value       = [for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : v.annotations]
}
output "data_factory_dataset_snowflakes_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_dataset_snowflakes"
  value       = [for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : v.data_factory_id]
}
output "data_factory_dataset_snowflakes_description" {
  description = "List of description values across all data_factory_dataset_snowflakes"
  value       = [for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : v.description]
}
output "data_factory_dataset_snowflakes_folder" {
  description = "List of folder values across all data_factory_dataset_snowflakes"
  value       = [for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : v.folder]
}
output "data_factory_dataset_snowflakes_linked_service_name" {
  description = "List of linked_service_name values across all data_factory_dataset_snowflakes"
  value       = [for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : v.linked_service_name]
}
output "data_factory_dataset_snowflakes_name" {
  description = "List of name values across all data_factory_dataset_snowflakes"
  value       = [for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : v.name]
}
output "data_factory_dataset_snowflakes_parameters" {
  description = "List of parameters values across all data_factory_dataset_snowflakes"
  value       = [for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : v.parameters]
}
output "data_factory_dataset_snowflakes_schema_column" {
  description = "List of schema_column values across all data_factory_dataset_snowflakes"
  value       = [for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : v.schema_column]
}
output "data_factory_dataset_snowflakes_schema_name" {
  description = "List of schema_name values across all data_factory_dataset_snowflakes"
  value       = [for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : v.schema_name]
}
output "data_factory_dataset_snowflakes_table_name" {
  description = "List of table_name values across all data_factory_dataset_snowflakes"
  value       = [for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : v.table_name]
}

