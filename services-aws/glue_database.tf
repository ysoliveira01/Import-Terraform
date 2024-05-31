module "name_example" {
  source = "./modules/aws_glue/databases"

  database_name = "name_example"
  description   = "description example"
}