terraform {
  backend "s3" {
    bucket = "terraform-state"
    key    = "terraform-state/import/terraform.state"
    region = "sa-east-1"
  }
}