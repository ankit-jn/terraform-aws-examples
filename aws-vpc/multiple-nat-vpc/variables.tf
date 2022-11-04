variable "vpc_name" {}
variable "vpc_cidr" {}

variable "vpc_dns_configs" {}

variable "dedicated_network_acl" {}
variable "dedicated_route_table" {}

variable "create_igw" {}

variable "nat_gateways" {}

variable "subnets_infra" {}
variable "subnets_application" {}
variable "subnets_database" {}

variable "default_tags" {}
variable "vpc_tags" {}
variable "igw_tags" {}
variable "rt_default_tags" {}
variable "subnet_default_tags" {}
variable "network_acl_default_tags" {}