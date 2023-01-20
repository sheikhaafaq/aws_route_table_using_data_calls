resource "aws_route" "nat_gw_route" {
  count = (var.nat_gateway_route_conf == "" ) ? 0 : length(var.nat_gateway_route_conf)
  route_table_id            = var.route_table_id
  destination_cidr_block    = var.nat_gateway_route_conf[count.index].destination_cidr_block
  nat_gateway_id            = data.aws_nat_gateway.main[count.index].id
  depends_on = [
    data.aws_nat_gateway.main
  ]
}

data "aws_nat_gateway" "main" {
    count = (var.nat_gateway_route_conf == "" ) ? 0 : length(var.nat_gateway_route_conf)
    tags = var.nat_gateway_route_conf[count.index].nat_gateway_tags   
}

