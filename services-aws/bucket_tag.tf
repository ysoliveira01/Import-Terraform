module "us-east-1-extractta-datalake-0001" {
  source      = "./modules/bucket_tag"
  bucket_name = ""
  providers = {
    aws = aws.us-east-1
  }
  Project     = ""
  Environment = ""
  CostCenter  = ""
  Departament = ""
}