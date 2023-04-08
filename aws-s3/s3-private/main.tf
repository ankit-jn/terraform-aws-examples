module "s3" {
    source = "git::https://github.com/ankit-jn/terraform-aws-s3"
    
    name = var.name
    default_tags = var.default_tags
    
}