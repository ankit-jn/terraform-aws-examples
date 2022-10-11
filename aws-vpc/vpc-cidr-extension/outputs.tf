## Outputs for VPC
output vpc_config {    
    description = "The VPC Details"
    value = module.vpc.vpc_config
}

output "vpc_default_route_table_id" {
    description = "The ID of the route table created by default on VPC creation"
    value = module.vpc.vpc_default_route_table_id
}

output "vpc_main_route_table_id" {
    description = "The ID of the main route table associated with this VPC."
    value = module.vpc.vpc_main_route_table_id
}

output "vpc_default_network_acl_id" {
    description = "The ID of the network ACL created by default on VPC creation"
    value = module.vpc.vpc_default_network_acl_id
}

output "vpc_default_security_group_id" {
    description = "The ID of the security group created by default on VPC creation"
    value = module.vpc.vpc_default_security_group_id
}

output "vpc_dhcp_options_id" {
    description = "The ID if DHCP Option"
    value = module.vpc.vpc_dhcp_options_id
}

output "vpc_enable_classiclink" {
    description = "Whether or not the VPC has Classiclink enabled"
    value = module.vpc.vpc_enable_classiclink
}

output "vpc_enable_classiclink_dns_support" {
    description = "Whether or not the VPC has Classiclink DNS support"
    value = module.vpc.vpc_enable_classiclink_dns_support
}

output "vpc_enable_dns_support" {
    description = "Whether or not the VPC has DNS support"
    value = module.vpc.vpc_enable_dns_hostnames
}

output "vpc_enable_dns_hostnames" {
    description = "Whether or not the VPC has DNS hostname support"
    value = module.vpc.vpc_enable_dns_hostnames
}

output "vpc_ipv6_association_id" {
    description = "The association ID for the IPv6 CIDR block."
    value = module.vpc.vpc_ipv6_association_id
}

output "vpc_ipv6_cidr_block_network_border_group" {
    description = "The Network Border Group Zone name"
    value = module.vpc.vpc_ipv6_cidr_block_network_border_group
}

output "vpc_tags_all" {
    description = "All tags associated to VPC"
    value = module.vpc.vpc_tags_all
}

## Outputs for Internet Gateways
output "vpc_igw" {
    description = "The details of the Internet Gateway."
    value = module.vpc.vpc_igw
}

output "vpc_egress_igw_id" {
    description = "The ID of the egress-only Internet gateway."
    value = module.vpc.vpc_egress_igw_id
}

# Outputs for Subnets
output "subnets_public" {
    description = "The configuration of all subnets"
    value = module.vpc.subnets
}

# Outputs for Route Tables
output "public_route_table_id" {
    description = "ID of Dedicated route table"
    value       = module.vpc.route_table_id
}

# Outputs for Infra Subnets
output "subnets_infra" {
    description = "The configuration of all Infra subnets"
    value = module.subnets_infra.subnets
}

# Outputs for Infra Route Tables
output "infra_route_table_id" {
    description = "ID of Dedicated route table for Infra subnets"
    value       = module.subnets_infra.route_table_id
}
