module "name_role" {
  source = "./modules/iam_role"

  role_name        = "name_role"
  role_description = ""

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "datazone.amazonaws.com"
        }
        Action = [
          "sts:AssumeRole",
          "sts:TagSession"
        ]
        Condition = {
          StringEquals = {
            "aws:SourceAccount" = ""
          }
          "ForAllValues:StringLike" = {
            "aws:TagKeys" = "datazone*"
          }
        }
      }
    ]
  })
  role_path = "/service-role/"
}