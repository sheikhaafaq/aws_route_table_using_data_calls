resource "aws_route" "internet_gw_route" {
  count = (var.internet_gateway_route_conf == "" ) ? 0 : 1
  route_table_id            = var.route_table_id
  destination_cidr_block    = var.internet_gateway_route_conf.destination_cidr_block
  gateway_id                = data.aws_internet_gateway.main[count.index].id
  depends_on = [
    data.aws_internet_gateway.main
  ]
}

data "aws_internet_gateway" "main" {
  count = (var.internet_gateway_route_conf == "" ) ? 0 : 1
  tags = var.internet_gateway_route_conf.internet_gateway_tags
}


