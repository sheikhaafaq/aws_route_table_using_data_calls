resource "aws_route" "peering_connection_route" {
    count = (var.peering_connection_route_conf == "" ) ? 0 : length(var.peering_connection_route_conf)
    route_table_id                = var.route_table_id
    destination_cidr_block        = var.peering_connection_route_conf[count.index].destination_cidr_block
    vpc_peering_connection_id     = data.aws_vpc_peering_connection.main[count.index].id
    depends_on = [
      data.aws_vpc_peering_connection.main
    ]
}

data "aws_vpc_peering_connection" "main" {
    count = (var.peering_connection_route_conf == "" ) ? 0 : length(var.peering_connection_route_conf)
    tags = var.peering_connection_route_conf[count.index].peering_connection_tags   
}
