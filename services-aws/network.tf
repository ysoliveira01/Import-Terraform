################## vpc ##################

module "vpc_name" {
  source     = "./modules/network"
  cidr_block = "10.0.0.0/16"
  tag_name   = "vpc_name"
}

################## subnet ##################

module "subnet_name" {
  source            = "./modules/network/subnet"
  cidr_block_subnet = ""
  vpc_name          = "id_vpc"
  tag_name_subnet   = "name_subnet"
}
################## route table ##################

module "name_routetable" {
  source               = "./modules/network/route_table"
  vpc_name             = "id_vpc"
  cidr_block           = "0.0.0.0/0"
  tag_name_route_table = "name_routetable"
  gateway_id           = "id"
}

################## Internet Gateway ####################

module "gateway_name" {
  source   = "./modules/network/internet_gateway"
  vpc_name = "id_vpc"
  tag_name = "gateway_name"

}

################## aws_security_group ##################

module "name_sg" {
  source      = "./modules/network/security_group"
  vpc_id      = "id_vpc"
  name        = "name_sg"
  description = "description"
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