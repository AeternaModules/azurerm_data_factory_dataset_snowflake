output "data_factory_dataset_snowflakes_id" {
  description = "Map of id values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_dataset_snowflakes_additional_properties" {
  description = "Map of additional_properties values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.additional_properties if v.additional_properties != null && length(v.additional_properties) > 0 }
}
output "data_factory_dataset_snowflakes_annotations" {
  description = "Map of annotations values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "data_factory_dataset_snowflakes_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_dataset_snowflakes_description" {
  description = "Map of description values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_factory_dataset_snowflakes_folder" {
  description = "Map of folder values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.folder if v.folder != null && length(v.folder) > 0 }
}
output "data_factory_dataset_snowflakes_linked_service_name" {
  description = "Map of linked_service_name values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.linked_service_name if v.linked_service_name != null && length(v.linked_service_name) > 0 }
}
output "data_factory_dataset_snowflakes_name" {
  description = "Map of name values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_dataset_snowflakes_parameters" {
  description = "Map of parameters values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "data_factory_dataset_snowflakes_schema_column" {
  description = "Map of schema_column values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.schema_column if v.schema_column != null && length(v.schema_column) > 0 }
}
output "data_factory_dataset_snowflakes_schema_name" {
  description = "Map of schema_name values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.schema_name if v.schema_name != null && length(v.schema_name) > 0 }
}
output "data_factory_dataset_snowflakes_table_name" {
  description = "Map of table_name values across all data_factory_dataset_snowflakes, keyed the same as var.data_factory_dataset_snowflakes"
  value       = { for k, v in azurerm_data_factory_dataset_snowflake.data_factory_dataset_snowflakes : k => v.table_name if v.table_name != null && length(v.table_name) > 0 }
}

