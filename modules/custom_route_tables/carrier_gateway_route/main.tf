#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_carrier_gateway
resource "aws_route" "carrier_gw_route" {
  count = (var.carrier_gateway_route_conf == "" ) ? 0 : length(var.carrier_gateway_route_conf)
  route_table_id            = var.route_table_id
  destination_cidr_block    = var.carrier_gateway_route_conf[count.index].destination_cidr_block
  carrier_gateway_id        = var.carrier_gateway_route_conf[count.index].carrier_gateway_id
}

#Carrier Gateway doesn't support data source functionality.