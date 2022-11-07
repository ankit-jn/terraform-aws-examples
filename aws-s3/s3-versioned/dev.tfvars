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

default_tags = {
    "Region" = "ap-south-1"
    "CostCenter" = "1234"
}
