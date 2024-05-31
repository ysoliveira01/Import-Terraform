module "dadosreceita" {
  source = "./modules/aws_glue/table"

  table_name             = "name_example"
  database_name          = "database_name"
  description            = "description"
  table_type             = "EXTERNAL_TABLE"
  location               = ""
  input_format           = ""
  output_format          = ""
  serialization_library  = ""
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "name_example"
      type    = "type"
      comment = ""
    }
  ]
}