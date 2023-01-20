resource "aws_route" "egress_only_internet_gw_route" {
  count = (var.egress_only_internet_gateway_route_conf == "" ) ? 0 : 1
  route_table_id                  = var.route_table_id
  destination_ipv6_cidr_block     = var.egress_only_internet_gateway_route_conf.destination_ipv6_cidr_block
  egress_only_gateway_id          = var.egress_only_internet_gateway_route_conf.egress_only_internet_gateway_id
}
