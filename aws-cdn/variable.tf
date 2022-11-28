variable "bucket_name" {}

variable "price_class" {}
variable "default_root_object" {}
variable "error_responses" {}
variable "geo_restriction" {}
variable "origins" {}

variable "default_cache_behavior" {}
variable "ordered_cache_behaviors" {}

variable "cache_policies" {}
variable "origin_request_policies" {}
variable "response_headers_policies" {}

variable "create_origin_access_identity" {}

variable "public_keys" {}
variable "key_groups" {}
variable "encryption_profiles" {}

variable cloudfront_functions {}

variable "default_tags" {}
variable "s3_tags" {}
variable "cdn_tags" {}