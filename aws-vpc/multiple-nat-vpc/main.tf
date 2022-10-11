## Create VPC 
module "vpc" {
    source = "git::https://github.com/arjstack/terraform-aws-vpc.git"
    
    vpc_name = var.vpc_name
    ipv4_cidr_block = var.vpc_cidr
    
    vpc_dns_configs = var.vpc_dns_configs

    create_igw              = var.create_igw

    default_tags                = var.default_tags
    vpc_tags                    = var.vpc_tags
    igw_tags                    = var.igw_tags
}

## Infrastructure subnets to be provisioned
module "subnets_infra" {
    source = "git::https://github.com/arjstack/terraform-aws-vpc.git"
    
    create_vpc = false
    vpc_id = module.vpc.vpc_config.id
    vpc_name = var.vpc_name

    dedicated_network_acl = var.dedicated_network_acl
    dedicated_route_table = var.dedicated_route_table

    subnets_type = "infra"
    subnets = var.subnets_infra

    nat_gateways = var.nat_gateways

    default_tags                = var.default_tags
    rt_default_tags             = var.rt_default_tags
    subnet_default_tags         = var.subnet_default_tags
    network_acl_default_tags    = var.network_acl_default_tags

    depends_on = [
        module.vpc
    ]
}

## Application subnets to be provisioned
module "subnets_application" {
    source = "git::https://github.com/arjstack/terraform-aws-vpc.git"
    
    create_vpc = false
    vpc_id = module.vpc.vpc_config.id
    vpc_name = var.vpc_name

    dedicated_network_acl = var.dedicated_network_acl
    dedicated_route_table = var.dedicated_route_table
    
    create_igw_ipv4_route = false
    create_nat_gateway_route = true
    nat_gateway_id = module.subnets_infra.nat_gatways_config["2"].id
    
    subnets_type = "application"
    subnets = var.subnets_application

    default_tags                = var.default_tags
    rt_default_tags             = var.rt_default_tags
    subnet_default_tags         = var.subnet_default_tags
    network_acl_default_tags    = var.network_acl_default_tags

    depends_on = [
        module.vpc
    ]
}

## Database subnets to be provisioned
module "subnets_database" {
    source = "git::https://github.com/arjstack/terraform-aws-vpc.git"
    
    create_vpc = false
    vpc_id = module.vpc.vpc_config.id
    vpc_name = var.vpc_name

    dedicated_network_acl = var.dedicated_network_acl
    dedicated_route_table = var.dedicated_route_table

    create_igw_ipv4_route = false
    create_nat_gateway_route = true
    nat_gateway_id = module.subnets_infra.nat_gatways_config["1"].id

    subnets_type = "database"
    subnets = var.subnets_database

    default_tags                = var.default_tags
    rt_default_tags             = var.rt_default_tags
    subnet_default_tags         = var.subnet_default_tags
    network_acl_default_tags    = var.network_acl_default_tags

    depends_on = [
        module.vpc
    ]
}