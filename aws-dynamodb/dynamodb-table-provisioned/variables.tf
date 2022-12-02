variable "name" {}

variable "partition_key_name" {}
variable "partition_key_type" {}

variable "sort_key_name" {}
variable "sort_key_type" {}

variable "attributes" {}

variable "read_capacity" {}
variable "write_capacity" {}

variable "stream_enabled" {}

variable "enable_point_in_time_recovery" {}

variable "enable_ttl" {}

variable "ttl_attribute" {}

variable "enable_server_side_encryption" {}

variable "local_secondary_indexes" {}
variable "global_secondary_indexes" {}

variable "provision_contributor_insights" {}