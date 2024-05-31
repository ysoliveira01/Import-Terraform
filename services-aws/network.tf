################## vpc ##################

module "projeto-teste-vpc" {
  source     = "./modules/network"
  cidr_block = "10.0.0.0/16"
  tag_name   = "projeto-teste-vpc"
} # terraform import module.projeto-teste-vpc.aws_vpc.projeto-teste-vpc vpc-0f7f63885b428274e

################## subnet ##################

module "projeto-teste_subnet_private" {
  source            = "./modules/network/subnet"
  cidr_block_subnet = "10.0.128.0/20"
  vpc_name          = "vpc-0f7f63885b428274e"
  tag_name_subnet   = "projeto-teste-subnet-private1-sa-east-1a"
}

module "projeto-teste_subnet-public" {
  source            = "./modules/network/subnet"
  cidr_block_subnet = "10.0.0.0/20"
  vpc_name          = "vpc-0f7f63885b428274e"
  tag_name_subnet   = "projeto-teste-subnet-public1-sa-east-1a"
} # terraform import module.projeto-teste_subnet.aws_subnet.projeto-teste subnet-0475403fa62d26d0c

################## route table ##################

module "projeto-teste-rtb-public" {
  source               = "./modules/network/route_table"
  vpc_name             = "vpc-0f7f63885b428274e"
  cidr_block           = "0.0.0.0/0"
  tag_name_route_table = "projeto-teste-rtb-public"
  gateway_id           = "igw-0b55cdd04dc9391da"
}

module "projeto-teste-rtb-private1-sa-east-1a" {
  source               = "./modules/network/route_table"
  vpc_name             = "vpc-0f7f63885b428274e"
  cidr_block           = ""
  tag_name_route_table = "projeto-teste-rtb-private1-sa-east-1a"
  gateway_id           = ""
}

################## Internet Gateway ####################

module "projeto-teste-igw" {
  source   = "./modules/network/internet_gateway"
  vpc_name = "vpc-0f7f63885b428274e" #vpc_id
  tag_name = "projeto-teste-igw"

}

################## aws_security_group ##################

module "launch-wizard-1" {
  source      = "./modules/network/security_group"
  vpc_id      = "vpc-0ae8b936c366937b5"
  name        = "launch-wizard-1"
  description = "launch-wizard-1 created 2022-09-24T13:53:19.092Z"
  ingress_rules = [
    # {
    #   from_port   = 3389
    #   to_port     = 3389
    #   protocol    = "tcp"
    #   cidr_blocks = ["0.0.0.0/0"]
    # }
  ]
  egress_rules = [
    # {
    #   from_port   = 0
    #   to_port     = 0
    #   protocol    = "-1"
    #   cidr_blocks = ["0.0.0.0/0"]
    # }
  ]
}

module "launch-wizard-2" {
  source      = "./modules/network/security_group"
  vpc_id      = "vpc-0ae8b936c366937b5"
  name        = "launch-wizard-2"
  description = "launch-wizard-2 created 2022-10-21T10:50:14.173Z"
  ingress_rules = [
    # {
    #   from_port   = 3389
    #   to_port     = 3389
    #   protocol    = "tcp"
    #   cidr_blocks = ["0.0.0.0/0"]
    # }
  ]
  egress_rules = [
    # {
    #   from_port   = 0
    #   to_port     = 0
    #   protocol    = "-1"
    #   cidr_blocks = ["0.0.0.0/0"]
    # }
  ]
}

module "launch-wizard-3" {
  source      = "./modules/network/security_group"
  vpc_id      = "vpc-0ae8b936c366937b5"
  name        = "launch-wizard-3"
  description = "launch-wizard-3 created 2024-05-21T20:32:07.605Z"
  ingress_rules = [
    # {
    #   from_port   = 3389
    #   to_port     = 3389
    #   protocol    = "tcp"
    #   cidr_blocks = ["0.0.0.0/0"]
    # }
  ]
  egress_rules = [
    # {
    #   from_port   = 0
    #   to_port     = 0
    #   protocol    = "-1"
    #   cidr_blocks = ["0.0.0.0/0"]
    # }
  ]
}

module "projeto-teste-sg" {
  source      = "./modules/network/security_group"
  vpc_id      = "vpc-0f7f63885b428274e"
  name        = "projeto-teste-sg"
  description = "projeto-teste-sg"
  ingress_rules = [
    # {
    #   from_port   = 3389
    #   to_port     = 3389
    #   protocol    = "tcp"
    #   cidr_blocks = ["0.0.0.0/0"]
    # }
  ]
  egress_rules = [
    # {
    #   from_port   = 0
    #   to_port     = 0
    #   protocol    = "-1"
    #   cidr_blocks = ["0.0.0.0/0"]
    # }
  ]
}