resource "aws_route" "virtual_private_gw_route" {
  count = (var.virtual_private_gateway_route_conf == "" ) ? 0 : 1
  route_table_id            = var.route_table_id
  destination_cidr_block    = var.virtual_private_gateway_route_conf.destination_cidr_block
  gateway_id                = data.aws_vpn_gateway.main[count.index].id
  depends_on = [
    data.aws_vpn_gateway.main
  ]
}


data "aws_vpn_gateway" "main" {
  count = (var.virtual_private_gateway_route_conf == "" ) ? 0 : 1
  tags = var.virtual_private_gateway_route_conf[count.index].virtual_private_gateway_tags
}
