resource "aws_route" "local_gateway_route" {
  count = (var.local_gateway_route_conf == "" ) ? 0 : length(var.local_gateway_route_conf)
  route_table_id                = var.route_table_id
  destination_cidr_block        = var.local_gateway_route_conf[count.index].destination_cidr_block
  local_gateway_id              = data.aws_ec2_local_gateway.main[count.index].id
  depends_on = [
    data.aws_ec2_local_gateway.main
  ]
}



data "aws_ec2_local_gateway" "main" {
  count = (var.local_gateway_route_conf == "" ) ? 0 : length(var.local_gateway_route_conf)
  tags = var.local_gateway_route_conf[count.index].local_gateway_tags
}
