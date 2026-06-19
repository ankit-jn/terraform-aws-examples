module "s3" {
    source = "git::https://github.com/ankit-jn/terraform-aws-modules//aws-s3?ref=main"
    
    name = var.name
    default_tags = var.default_tags
    
}