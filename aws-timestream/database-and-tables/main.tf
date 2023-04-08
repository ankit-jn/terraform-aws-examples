module "timestream" {
    source = "git::https://github.com/ankit-jn/terraform-aws-timestream"
    
    database_name   = var.database_name

    tables          = var.tables
    
    default_tags    = var.default_tags
}