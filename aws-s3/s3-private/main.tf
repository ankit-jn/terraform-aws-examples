module "s3" {
    source = "git::https://github.com/arjstack/terraform-aws-s3?ref=v1.0.0"
    
    name = var.name
    default_tags = var.default_tags
    
}