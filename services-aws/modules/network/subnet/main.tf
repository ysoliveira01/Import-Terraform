resource "aws_subnet" "projeto-teste" {
  vpc_id     = var.vpc_name
  cidr_block = var.cidr_block_subnet
  tags = {
    Name = var.tag_name_subnet
  }
}