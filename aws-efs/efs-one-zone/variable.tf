variable "name" {}
variable "availability_zone_name" {}

variable "throughput_mode" {}

variable "encrypt_disk" {}
variable "create_kms_key" {}

variable "mount_targets" {}

variable "transition_to_ia" {}
variable "transition_from_ia" {}

variable "attach_policy_prevent_anonymous_access" {}

variable "create_sg" {}
variable "vpc_id" {}

variable "sg_rules" {}
variable "allowed_sg" {}
variable "additional_sg" {}

variable "default_tags" {}