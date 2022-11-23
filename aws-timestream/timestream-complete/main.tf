module "timestream" {
    source = "git::https://github.com/arjstack/terraform-aws-timestream?ref=v1.0.0"
    
    database_name   = var.database_name
    create_kms_key = true

    tables          = var.tables
    
    default_tags    = var.default_tags
}