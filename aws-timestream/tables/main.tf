module "timestream" {
    source = "git::https://github.com/arjstack/terraform-aws-timestream?ref=v1.0.0"
    
    create_database = var.create_database
    database_name   = var.database_name

    tables          = var.tables
    
    default_tags    = var.default_tags
}