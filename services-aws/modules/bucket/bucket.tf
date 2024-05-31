resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}