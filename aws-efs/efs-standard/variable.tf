variable "name" {}

variable "performance_mode" {}
variable "throughput_mode" {}
variable "provisioned_throughput_in_mibps" {}

variable "encrypt_disk" {}
variable "create_kms_key" {}

variable "mount_targets" {}

variable "transition_to_ia" {}

variable "attach_efs_policy" {}
variable "policy_file" {}
variable "attach_policy_prevent_root_access" {}
variable "attach_policy_prevent_anonymous_access" {}

variable "create_sg" {}
variable "vpc_id" {}

variable "sg_rules" {}
variable "allowed_sg" {}
variable "additional_sg" {}

variable "default_tags" {}