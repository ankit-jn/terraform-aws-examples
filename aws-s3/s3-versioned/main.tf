module "s3" {
    source = "git::https://github.com/ankit-jn/terraform-aws-s3"
    
    name = var.name
    
    enable_versioning = var.enable_versioning
    versioning = var.versioning

    bucket_public_access = var.bucket_public_access

    default_tags = var.default_tags
}