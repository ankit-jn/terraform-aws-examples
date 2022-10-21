## Create VPC
module "vpc" {
    source = "git::https://github.com/arjstack/terraform-aws-vpc.git?ref=v1.0.0"
    
    vpc_name = var.vpc_name
    ipv4_cidr_block = var.vpc_cidr

    vpc_dns_configs = var.vpc_dns_configs

    vpc_secondary_cidr_blocks = var.vpc_secondary_cidr_blocks

    dedicated_network_acl = var.dedicated_network_acl
    dedicated_route_table = var.dedicated_route_table
    
    subnets_type = "public"
    subnets = var.subnets_public

    default_tags = var.default_tags
}

## Infrastructure subnets to be provisioned
module "subnets_infra" {
    source = "git::https://github.com/arjstack/terraform-aws-vpc.git?ref=v1.0.0"
    
    create_vpc = false
    vpc_id = module.vpc.vpc_config.id
    vpc_name = var.vpc_name

    dedicated_network_acl = var.dedicated_network_acl
    dedicated_route_table = var.dedicated_route_table
    
    subnets_type = "infra"
    subnets = var.subnets_infra

    default_tags = var.default_tags

    depends_on = [
        module.vpc
    ]
}