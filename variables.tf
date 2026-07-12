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
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_dataset_snowflake's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.LinkedServiceDatasetName] regexp.MustCompile(`^[-.+?/<>*%&:\\]+$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: table_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: schema_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: folder
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: schema_column.name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: schema_column.type
  #   condition: contains(["NUMBER", "DECIMAL", "NUMERIC", "INT", "INTEGER", "BIGINT", "SMALLINT", "FLOAT", "FLOAT4", "FLOAT8", "DOUBLE", "DOUBLE PRECISION", "REAL", "VARCHAR", "CHAR", "CHARACTER", "STRING", "TEXT", "BINARY", "VARBINARY", "BOOLEAN", "DATE", "DATETIME", "TIME", "TIMESTAMP", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TIMESTAMP_TZ", "VARIANT", "OBJECT", "ARRAY", "GEOGRAPHY"], value)
  #   message:   must be one of: NUMBER, DECIMAL, NUMERIC, INT, INTEGER, BIGINT, SMALLINT, FLOAT, FLOAT4, FLOAT8, DOUBLE, DOUBLE PRECISION, REAL, VARCHAR, CHAR, CHARACTER, STRING, TEXT, BINARY, VARBINARY, BOOLEAN, DATE, DATETIME, TIME, TIMESTAMP, TIMESTAMP_LTZ, TIMESTAMP_NTZ, TIMESTAMP_TZ, VARIANT, OBJECT, ARRAY, GEOGRAPHY
  # path: schema_column.precision
  #   condition: value >= 0
  #   message:   must be at least 0
  # path: schema_column.scale
  #   condition: value >= 0
  #   message:   must be at least 0
}

