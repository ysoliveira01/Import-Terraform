resource "aws_route_table" "example" {
  vpc_id = var.vpc_name

  dynamic "route" {
    for_each = var.cidr_block != "" ? [1] : []
    content {
      cidr_block = var.cidr_block
      gateway_id = var.gateway_id
    }
  }

  tags = {
    Name = var.tag_name_route_table
  }
}
