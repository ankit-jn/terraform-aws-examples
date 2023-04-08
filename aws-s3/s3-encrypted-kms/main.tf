module "s3" {
    source = "git::https://github.com/ankit-jn/terraform-aws-s3"
    
    name = var.name
    
    enable_versioning = var.enable_versioning
    versioning = var.versioning

    enable_sse = var.enable_sse
    create_kms_key = var.create_kms_key
    server_side_encryption = var.server_side_encryption

    default_tags = var.default_tags
}