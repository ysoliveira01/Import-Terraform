resource "aws_iam_role" "iam_role" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
  path               = var.role_path
  description        = var.role_description
}
