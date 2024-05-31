module "db_raw_antifraude_db" {
  source = "./modules/aws_glue/databases"

  database_name = "db_raw_antifraude_db"
  description   = "Sistema de origem do dado: antifraude_db; Tecnologia de origem do dado: sql server; Nome do banco de dados: db_raw_antifraude_db."
}

module "db_raw_ec_gateway" {
  source = "./modules/aws_glue/databases"

  database_name = "db_raw_ec_gateway"
  description   = "Sistema de origem do dado: ec_gateway; Tecnologia de origem do dado: sql server; Nome do banco de dados: db_raw_ec_gateway."
}

module "db_raw_granito_base_2" {
  source = "./modules/aws_glue/databases"

  database_name = "db_raw_granito_base_2"
  description   = "Sistema de origem do dado: granitobaseii; Tecnologia de origem do dado: sql server;  Nome do banco de dados: db_raw_granito_base_2."
}

module "db_raw_granito_club" {
  source = "./modules/aws_glue/databases"

  database_name = "db_raw_granito_club"
  description   = "Sistema de origem do dado: granitoclub; Tecnologia de origem do dado: sql server;  Nome do banco de dados: db_raw_granito_club."
}

module "db_raw_pago_ecommerce" {
  source = "./modules/aws_glue/databases"

  database_name = "db_raw_pago_ecommerce"
  description   = "Sistema de origem do dado: pagoecommerce; Tecnologia de origem do dado: sql server;  Nome do banco de dados: db_raw_pago_ecommerce."
}

module "db_raw_pago_portal" {
  source = "./modules/aws_glue/databases"

  database_name = "db_raw_pago_portal"
  description   = "Sistema de origem do dado: pagoportal;  Tecnologia de origem do dado: sql server; Nome do banco de dados: db_raw_pago_portal."
}

module "db_raw_pago_srv" {
  source = "./modules/aws_glue/databases"

  database_name = "db_raw_pago_srv"
  description   = "Sistema de origem do dado: pagosrv; Tecnologia de origem do dado: sql server; Nome do banco de dados: db_raw_pago_srv."
}

module "db_raw_pix_gateway" {
  source = "./modules/aws_glue/databases"

  database_name = "db_raw_pix_gateway"
  description   = "Sistema de origem do dado: pix_gateway; Tecnologia de origem do dado: sql server; Nome do banco de dados: db_raw_pix_gateway."
}

module "db_raw_rc_gateway" {
  source = "./modules/aws_glue/databases"

  database_name = "db_raw_rc_gateway"
  description   = "Sistema de origem do dado: rc_gateway; Tecnologia de origem do dado: sql server; Nome do banco de dados: db_raw_rc_gateway."
}

module "db_refined_comercial" {
  source = "./modules/aws_glue/databases"

  database_name = "db_refined_comercial"
  description   = ""
}

module "db_refined_pago_portal" {
  source = "./modules/aws_glue/databases"

  database_name = "db_refined_pago_portal"
  description   = ""
}

module "db_trusted_antifraude_db" {
  source = "./modules/aws_glue/databases"

  database_name = "db_trusted_antifraude_db"
  description   = "Sistema de origem do dado: antifraude_db; Tecnologia de origem do dado: data lake raw; Nome do banco de dados: db_trusted_antifraude_db."
}

module "db_trusted_ec_gateway" {
  source = "./modules/aws_glue/databases"

  database_name = "db_trusted_ec_gateway"
  description   = "Sistema de origem do dado: ec_gateway; Tecnologia de origem do dado: data lake raw; Nome do banco de dados: db_trusted_ec_gateway."
}

module "db_trusted_granito_base_2" {
  source = "./modules/aws_glue/databases"

  database_name = "db_trusted_granito_base_2"
  description   = "Sistema de origem do dado: granitobaseii; Tecnologia de origem do dado: data lake raw; Nome do banco de dados: db_trusted_granito_base_2."
}

module "db_trusted_granito_club" {
  source = "./modules/aws_glue/databases"

  database_name = "db_trusted_granito_club"
  description   = "Sistema de origem do dado: granitoclub; Tecnologia de origem do dado: data lake raw; Nome do banco de dados: db_trusted_granito_club."
}

module "db_trusted_pago_ecommerce" {
  source = "./modules/aws_glue/databases"

  database_name = "db_trusted_pago_ecommerce"
  description   = "Sistema de origem do dado: pagoecommerce; Tecnologia de origem do dado: data lake raw; Nome do banco de dados: db_trusted_pago_ecommerce."
}

module "db_trusted_pago_portal" {
  source = "./modules/aws_glue/databases"

  database_name = "db_trusted_pago_portal"
  description   = "Sistema de origem do dado: pagoportal; Tecnologia de origem do dado: data lake raw; Nome do banco de dados: db_trusted_pago_portal."
}

module "db_trusted_pago_srv" {
  source = "./modules/aws_glue/databases"

  database_name = "db_trusted_pago_srv"
  description   = "Sistema de origem do dado: pagosrv; Tecnologia de origem do dado: data lake raw; Nome do banco de dados: db_trusted_pago_srv."
}

module "db_trusted_pix_gateway" {
  source = "./modules/aws_glue/databases"

  database_name = "db_trusted_pix_gateway"
  description   = "Sistema de origem do dado: pix_gateway; Tecnologia de origem do dado: data lake raw; Nome do banco de dados: db_trusted_pix_gateway."
}

module "db_trusted_rc_gateway" {
  source = "./modules/aws_glue/databases"

  database_name = "db_trusted_rc_gateway"
  description   = "Sistema de origem do dado: rc_gateway; Tecnologia de origem do dado: data lake raw; Nome do banco de dados: db_trusted_rc_gateway."
}