### ASG Specific Variables
variable "name" {}

variable "min_size" {}
variable "max_size" {}
variable "desired_capacity" {}

variable "vpc_zone_identifier" {}

variable "capacity_rebalance" {}
variable "default_cooldown" {}
variable "default_instance_warmup" {}
variable "protect_from_scale_in" {}

### Launch template Specific Variables
variable "launch_template_name" {}
variable "launch_template_description" {}
variable "instance_type" {}
variable "ssm_param_image" {}
variable "health_check_type" {}

### Instance Profile Specific Variables
variable "instance_profile_name" {}
variable "instance_profile_path" {}
variable "instance_profile_policies" {}

### Tags
variable "default_tags" {}
variable "instance_profile_tags" {}