resource "aws_route_table" "main" {
  vpc_id = data.aws_vpc.main.id
  tags = var.route_tables_conf.tags
  
}

resource "aws_route_table_association" "main" {
  for_each = toset(data.aws_subnets.main.ids)
  subnet_id      = each.value
  route_table_id = aws_route_table.main.id
  depends_on = [
    data.aws_subnets.main,
    aws_route_table.main
  ]
}

data "aws_subnets" "main" {
  tags = var.route_tables_conf.subnet_association_tags   
}

data "aws_vpc" "main" {
  tags = var.route_tables_conf.vpc_tags
}