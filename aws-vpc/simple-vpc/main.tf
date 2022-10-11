## Create VPC along with public subnets
module "vpc" {
    source = "git::https://github.com/arjstack/terraform-aws-vpc.git"
    
    vpc_name = var.vpc_name
    ipv4_cidr_block = var.vpc_cidr

    vpc_dns_configs = var.vpc_dns_configs

    dedicated_network_acl = var.dedicated_network_acl
    dedicated_route_table = var.dedicated_route_table
    subnets_type = "public"
    subnets = var.subnets_public

    default_tags = var.default_tags
}