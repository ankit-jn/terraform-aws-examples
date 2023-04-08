module "timestream" {
    source = "git::https://github.com/ankit-jn/terraform-aws-timestream"
    
    create_database = var.create_database
    database_name   = var.database_name

    tables          = var.tables
    
    default_tags    = var.default_tags
}