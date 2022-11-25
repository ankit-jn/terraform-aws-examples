name = "arjstack-bucket"

enable_versioning = true
versioning = {
    status = "Enabled"
}

bucket_public_access = {
    block_public_acls       = false
    block_public_policy     = false
    ignore_public_acls      = false
    restrict_public_buckets = false
}

attach_bucket_policy = true
attach_policy_deny_insecure_transport = true

default_tags = {
    "Region" = "ap-south-1"
    "CostCenter" = "1234"
}
