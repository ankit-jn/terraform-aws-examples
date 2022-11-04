variable "name" {}
variable "lb_type" {}

variable "vpc_id" {}
variable "subnets" {}

variable "create_sg" {}
variable "sg_name" {}
variable "sg_rules" {}

variable "target_groups" {}

variable "default_ssl_policy" {}
variable "listeners" {}
variable "listener_rules" {}

variable "default_tags" {}