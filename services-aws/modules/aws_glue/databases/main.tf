resource "aws_glue_catalog_database" "database" {
  name        = var.database_name
  description = var.description
}