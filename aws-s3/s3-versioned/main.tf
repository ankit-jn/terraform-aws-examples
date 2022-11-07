module "s3" {
    source = "git::https://github.com/arjstack/terraform-aws-s3?ref=v1.0.0"
    
    name = var.name
    
    enable_versioning = var.enable_versioning
    versioning = var.versioning

    bucket_public_access = var.bucket_public_access

    default_tags = var.default_tags
}