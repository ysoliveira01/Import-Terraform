module "name_example" {
  source      = "./modules/bucket"
  bucket_name = "name_example"
  providers = {
    aws = aws.sa-east-1
  }
}