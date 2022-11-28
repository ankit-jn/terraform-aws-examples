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

##########################
## Cloudfront Functions
##########################
variable "cloudfront_functions" {
    description = <<EOF
List of Configurations Map for the cloudfront functions to be provisioned:
name: (Required) Unique name for your CloudFront Function.
runtime: (Required) Identifier of the function's runtime.
comment: (Optional) Comment.
publish: (Optional) Whether to publish creation/change as Live CloudFront Function Version.
code_file: (Required) Source code File of the function (Path relative to root directory)
EOF

    type = any
    default = []
}

variable "create_origin_access_identity" {}

variable "encryption_profiles" {
    description = <<EOF
List of Configuration Map (with the following properties) for Field Level Encryption Profiles to be provisioned.

name: (Required) Unique name to identify the Field Level Encryption Profile.
comments: (Optional) Comments to describe the Field Level Encryption Profile.

key_name: (Required) Public Key Name (as defined in `public_keys`), to be used when encrypting the fields that match the patterns.
provider_id: (Required) The provider associated with the public key being used for encryption.
field_patterns: (Requried) The list of field patterns to specify the fields that should be encrypted.

EOF
    type    = any
    default = []
}


variable "public_keys" {}
variable "key_groups" {}


variable "default_tags" {}
variable "s3_tags" {}
variable "cdn_tags" {}