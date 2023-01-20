resource "aws_route" "vpc_endpoint_route" {
  count = (var.vpc_endpoint_route_conf == "" ) ? 0 : length(var.vpc_endpoint_route_conf)
  route_table_id                = var.route_table_id
  destination_prefix_list_id    = var.vpc_endpoint_route_conf[count.index].destination_prefix_list_id
  
  vpc_endpoint_id               = data.aws_vpc_endpoint.main[count.index].id
  depends_on = [
    data.aws_vpc_endpoint.main
  ]
}


data "aws_vpc_endpoint" "main" {
  count = (var.vpc_endpoint_route_conf == "" ) ? 0 : length(var.vpc_endpoint_route_conf)
  tags = var.vpc_endpoint_route_conf[count.index].vpc_endpoint_tags

}

