
resource "aws_vpc" "projeto-teste-vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.tag_name
  }
} #