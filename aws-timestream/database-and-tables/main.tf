module "timestream" {
    source = "git::https://github.com/ankit-jn/terraform-aws-modules.git//aws-timestream?ref=main"
    
    database_name   = var.database_name

    tables          = var.tables
    
    default_tags    = var.default_tags
}