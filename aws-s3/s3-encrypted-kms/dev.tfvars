name = "arjstack-bucket"

enable_versioning = true
versioning = {
    status = "Enabled"
}

enable_sse = true
create_kms_key = true
server_side_encryption = {
    bucket_key_enabled  = true
    sse_algorithm       = "aws:kms"
}

default_tags = {
    "Region" = "ap-south-1"
    "CostCenter" = "1234"
}