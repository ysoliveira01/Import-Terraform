module "amazon-datazone-154545142646-sa-east-1-712135132" {
  source      = "./modules/bucket"
  bucket_name = "amazon-datazone-154545142646-sa-east-1-712135132"
  providers = {
    aws = aws.sa-east-1
  }
}

module "ex-grt-aos-spdt-datalake-athena-tmp-folder" {
  source      = "./modules/bucket"
  bucket_name = "ex-grt-aos-spdt-datalake-athena-tmp-folder"
  providers = {
    aws = aws.sa-east-1
  }
}

module "ex-grt-aos-spdt-datalake-raw" {
  source      = "./modules/bucket"
  bucket_name = "ex-grt-aos-spdt-datalake-raw"
  providers = {
    aws = aws.sa-east-1
  }
}

module "ex-grt-aos-spdt-datalake-refined" {
  source      = "./modules/bucket"
  bucket_name = "ex-grt-aos-spdt-datalake-refined"
  providers = {
    aws = aws.sa-east-1
  }
}

module "ex-grt-aos-spdt-datalake-staging" {
  source      = "./modules/bucket"
  bucket_name = "ex-grt-aos-spdt-datalake-staging"
  providers = {
    aws = aws.sa-east-1
  }
}

module "ex-grt-aos-spdt-datalake-trusted" {
  source      = "./modules/bucket"
  bucket_name = "ex-grt-aos-spdt-datalake-trusted"
  providers = {
    aws = aws.sa-east-1
  }
}

module "ex-grt-aos-spdt-datalake-utils" {
  source      = "./modules/bucket"
  bucket_name = "ex-grt-aos-spdt-datalake-utils"
  providers = {
    aws = aws.sa-east-1
  }
}

module "terraform-state-modules" {
  source      = "./modules/bucket"
  bucket_name = "terraform-state-modules"
  providers = {
    aws = aws.sa-east-1
  }
}

module "teste65w578w4f8w7f4wf" {
  source      = "./modules/bucket"
  bucket_name = "teste65w578w4f8w7f4wf"
  providers = {
    aws = aws.us-east-1
  }
}