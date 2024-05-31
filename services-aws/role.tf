module "AmazonDataZoneDomainExecution" {
  source = "./modules/iam_role"

  role_name        = "AmazonDataZoneDomainExecution"
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
            "aws:SourceAccount" = "154545142646"
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

module "AmazonDataZoneGlueAccess-sa-east-1-dzd_brhxutyot7ub2z" {
  source = "./modules/iam_role"

  role_name        = "AmazonDataZoneGlueAccess-sa-east-1-dzd_brhxutyot7ub2z"
  role_description = ""

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "datazone.amazonaws.com"
        },
        Action = "sts:AssumeRole",
        Condition = {
          StringEquals = {
            "aws:SourceAccount" : "154545142646"
          },
          ArnEquals = {
            "aws:SourceArn" : "arn:aws:datazone:sa-east-1:154545142646:domain/dzd_brhxutyot7ub2z"
          }
        }
      },
      {
        Effect = "Allow",
        Principal = {
          Service = "appflow.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  role_path = "/service-role/"
}

module "AmazonDataZoneProvisioning-154545142646" {
  source = "./modules/iam_role"

  role_name        = "AmazonDataZoneProvisioning-154545142646"
  role_description = ""

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "datazone.amazonaws.com"
        },
        Action = "sts:AssumeRole",
        Condition = {
          StringEquals = {
            "aws:SourceAccount" : "154545142646"
          }
        }
      }
    ]
  })
  role_path = "/service-role/"
}

module "AWSGlueServiceRole-BatchBronzePerson" {
  source = "./modules/iam_role"

  role_name        = "AWSGlueServiceRole-BatchBronzePerson"
  role_description = ""

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "glue.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  role_path = "/service-role/"
}

module "AWSGlueServiceRole-teste" {
  source = "./modules/iam_role"

  role_name        = "AWSGlueServiceRole-teste"
  role_description = ""

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "glue.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  role_path = "/service-role/"
}

module "AWSServiceRoleForLakeFormationDataAccess" {
  source = "./modules/iam_role"

  role_name        = "AWSServiceRoleForLakeFormationDataAccess"
  role_description = ""

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "lakeformation.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  role_path = "/aws-service-role/lakeformation.amazonaws.com/"
}

module "AWSServiceRoleForOrganizations" {
  source = "./modules/iam_role"

  role_name        = "AWSServiceRoleForOrganizations"
  role_description = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "organizations.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  role_path = "/aws-service-role/organizations.amazonaws.com/"
}

module "AWSServiceRoleForRDS" {
  source = "./modules/iam_role"

  role_name        = "AWSServiceRoleForRDS"
  role_description = "Allows Amazon RDS to manage AWS resources on your behalf"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "rds.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  role_path = "/aws-service-role/rds.amazonaws.com/"
}

module "AWSServiceRoleForSSO" {
  source = "./modules/iam_role"

  role_name        = "AWSServiceRoleForSSO"
  role_description = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "sso.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  role_path = "/aws-service-role/sso.amazonaws.com/"
}

module "AWSServiceRoleForSupport" {
  source = "./modules/iam_role"

  role_name        = "AWSServiceRoleForSupport"
  role_description = "Enables resource access for AWS to provide billing, administrative and support services"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "support.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  role_path = "/aws-service-role/support.amazonaws.com/"
}

module "AWSServiceRoleForTrustedAdvisor" {
  source = "./modules/iam_role"

  role_name        = "AWSServiceRoleForTrustedAdvisor"
  role_description = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "trustedadvisor.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  role_path = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

module "codebuild-teste-service-role" {
  source = "./modules/iam_role"

  role_name        = "codebuild-teste-service-role"
  role_description = ""

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "codebuild.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  role_path = "/service-role/"
}

module "GranitoLakeformationAdminRole" {
  source = "./modules/iam_role"

  role_name        = "GranitoLakeformationAdminRole"
  role_description = ""

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          AWS = "arn:aws:iam::154545142646:root"
        },
        Action    = "sts:AssumeRole",
        Condition = {}
      }
    ]
  })
  role_path = "/"
}

module "rds-monitoring-role" {
  source = "./modules/iam_role"

  role_name        = "rds-monitoring-role"
  role_description = ""

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid    = "",
        Effect = "Allow",
        Principal = {
          Service = "monitoring.rds.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  role_path = "/"
}