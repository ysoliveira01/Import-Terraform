resource "aws_glue_catalog_table" "aws_glue_catalog_table" {
  name          = var.table_name
  database_name = var.database_name
  description   = var.description
  table_type    = var.table_type

  storage_descriptor {
    location      = var.location
    input_format  = var.input_format
    output_format = var.output_format

    dynamic "columns" {
      for_each = var.columns
      content {
        name    = columns.value.name
        type    = columns.value.type
        comment = columns.value.comment
      }
    }

    ser_de_info {
      serialization_library = var.serialization_library
      parameters            = var.ser_de_info_parameters
    }
  }
}
