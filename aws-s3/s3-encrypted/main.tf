module "s3" {
    source = "git::https://github.com/arjstack/terraform-aws-s3?ref=v1.0.0"
    
    name = var.name
    
    enable_versioning = var.enable_versioning
    versioning = var.versioning

    enable_sse = var.enable_sse

    default_tags = var.default_tags
}