resource "aws_route" "transit_gateway_route" {
  count = (var.transit_gateway_route_conf == "" ) ? 0 : length(var.transit_gateway_route_conf)
  route_table_id                = var.route_table_id
  destination_cidr_block        = var.transit_gateway_route_conf[count.index].destination_cidr_block
  transit_gateway_id          = data.aws_ec2_transit_gateway.main[count.index].id
  depends_on = [
    data.aws_ec2_transit_gateway.main
  ]
}


data "aws_ec2_transit_gateway" "main" {
  count = (var.transit_gateway_route_conf == "" ) ? 0 : length(var.transit_gateway_route_conf)
  dynamic filter {
      for_each  = var.transit_gateway_route_conf[count.index].transit_gateway_tags
      content {
          name   = "tag:${filter.key}"
          values = [filter.value]
      }

  }
}
