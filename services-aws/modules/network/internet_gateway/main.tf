resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_name

  tags = {
    Name = var.tag_name
  }
}