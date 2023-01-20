resource "aws_route" "instance_route" {
  count = (var.instance_route_conf == "" ) ? 0 : length(var.instance_route_conf)
  route_table_id            = var.route_table_id
  destination_cidr_block    = var.instance_route_conf[count.index].destination_cidr_block
  instance_id            = data.aws_instance.main[count.index].id
  depends_on = [
    data.aws_instance.main
  ]
}


data "aws_instance" "main" {
  count = (var.instance_route_conf == "" ) ? 0 : length(var.instance_route_conf)
  instance_tags = var.instance_route_conf[count.index].instance_tags   
}

