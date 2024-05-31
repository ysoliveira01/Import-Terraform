module "us-east-1-extractta-datalake-0001" {
  source      = "./modules/bucket_tag"
  bucket_name = "us-east-1-extractta-datalake-0001"
  providers = {
    aws = aws.us-east-1
  }
  Project     = "granito"
  Environment = "dev"
  CostCenter  = "comercial"
  Departament = "comercial"
}