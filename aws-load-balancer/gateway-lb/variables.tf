variable "name" {}
variable "lb_type" {}

variable "vpc_id" {}
variable "subnets" {}

variable "enable_deletion_protection" {}
variable "drop_invalid_header_fields" {}
variable "enable_cross_zone_load_balancing" {}

variable "target_groups" {}

variable "gateway_listener" {}

variable "default_tags" {}