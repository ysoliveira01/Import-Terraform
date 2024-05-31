resource "aws_s3_bucket" "bucket_tag" {
  bucket = var.bucket_name
  tags = {
    Project     = var.Project
    Environment = var.Environment
    CostCenter  = var.CostCenter
    Departament = var.Departament
  }
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}