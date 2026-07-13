variable "data_factory_dataset_snowflakes" {
  description = <<EOT
Map of data_factory_dataset_snowflakes, attributes below
Required:
    - data_factory_id
    - linked_service_name
    - name
Optional:
    - additional_properties
    - annotations
    - description
    - folder
    - parameters
    - schema_name
    - table_name
    - schema_column (block):
        - name (required)
        - precision (optional)
        - scale (optional)
        - type (optional)
EOT

  type = map(object({
    data_factory_id       = string
    linked_service_name   = string
    name                  = string
    additional_properties = optional(map(string))
    annotations           = optional(list(string))
    description           = optional(string)
    folder                = optional(string)
    parameters            = optional(map(string))
    schema_name           = optional(string)
    table_name            = optional(string)
    schema_column = optional(list(object({
      name      = string
      precision = optional(number)
      scale     = optional(number)
      type      = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_snowflakes : (
        length(v.linked_service_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_snowflakes : (
        v.table_name == null || (length(v.table_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_snowflakes : (
        v.schema_name == null || (length(v.schema_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_snowflakes : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_snowflakes : (
        v.folder == null || (length(v.folder) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_snowflakes : (
        v.schema_column == null || alltrue([for item in v.schema_column : (length(item.name) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_snowflakes : (
        v.schema_column == null || alltrue([for item in v.schema_column : (item.type == null || (contains(["NUMBER", "DECIMAL", "NUMERIC", "INT", "INTEGER", "BIGINT", "SMALLINT", "FLOAT", "FLOAT4", "FLOAT8", "DOUBLE", "DOUBLE PRECISION", "REAL", "VARCHAR", "CHAR", "CHARACTER", "STRING", "TEXT", "BINARY", "VARBINARY", "BOOLEAN", "DATE", "DATETIME", "TIME", "TIMESTAMP", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TIMESTAMP_TZ", "VARIANT", "OBJECT", "ARRAY", "GEOGRAPHY"], item.type)))])
      )
    ])
    error_message = "must be one of: NUMBER, DECIMAL, NUMERIC, INT, INTEGER, BIGINT, SMALLINT, FLOAT, FLOAT4, FLOAT8, DOUBLE, DOUBLE PRECISION, REAL, VARCHAR, CHAR, CHARACTER, STRING, TEXT, BINARY, VARBINARY, BOOLEAN, DATE, DATETIME, TIME, TIMESTAMP, TIMESTAMP_LTZ, TIMESTAMP_NTZ, TIMESTAMP_TZ, VARIANT, OBJECT, ARRAY, GEOGRAPHY"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_snowflakes : (
        v.schema_column == null || alltrue([for item in v.schema_column : (item.precision == null || (item.precision >= 0))])
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_snowflakes : (
        v.schema_column == null || alltrue([for item in v.schema_column : (item.scale == null || (item.scale >= 0))])
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

