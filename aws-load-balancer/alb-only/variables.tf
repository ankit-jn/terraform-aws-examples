variable "name" {}
variable "lb_type" {}
    
variable "subnets" {}

variable "enable_deletion_protection" {}
variable "drop_invalid_header_fields" {}

variable "vpc_id" {}

variable "create_sg" {}
variable "sg_name" {}
variable "sg_rules" {}

variable "default_tags" {}