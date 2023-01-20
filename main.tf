provider "aws" {
  region = "us-east-1"
  profile = "default"
}

module "custom_route_tables" {
  count  = (var.create.custom_route_tables == true ) ? 1 : 0
  source = "./modules/custom_route_tables"
  route_tables_conf = var.route_tables_conf
}
