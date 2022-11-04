variable "vpc_name" {}
variable "vpc_cidr" {}
variable "vpc_secondary_cidr_blocks" {}

variable "vpc_dns_configs" {}

variable "dedicated_network_acl" {}
variable "dedicated_route_table" {}

variable "subnets_public" {}
variable "subnets_infra" {}

variable "default_tags" {}