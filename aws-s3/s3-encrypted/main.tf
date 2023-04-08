module "s3" {
    source = "git::https://github.com/ankit-jn/terraform-aws-s3"
    
    name = var.name
    
    enable_versioning = var.enable_versioning
    versioning = var.versioning

    enable_sse = var.enable_sse

    default_tags = var.default_tags
}