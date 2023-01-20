resource "aws_route" "network_interface_route" {
  count = (var.network_interface_route_conf == "" ) ? 0 : length(var.network_interface_route_conf)
  route_table_id                = var.route_table_id
  destination_cidr_block        = var.network_interface_route_conf[count.index].destination_cidr_block
  network_interface_id          = data.aws_network_interface.main[count.index].id
  depends_on = [
    data.aws_network_interface.main
  ]
}


data "aws_network_interface" "main" {
  count = (var.network_interface_route_conf == "" ) ? 0 : length(var.network_interface_route_conf)
    dynamic filter {
        for_each  = var.network_interface_route_conf[count.index].network_interface_tags
        content {
            name   = "tag:${filter.key}"
            values = [filter.value]
        }

    }
}
