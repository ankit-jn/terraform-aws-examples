module "timestream" {
    # source = "git::https://github.com/arjstack/terraform-aws-timestream?ref=v1.0.0"
    source = "../../../terraform-aws-timestream"
    database_name   = var.database_name

    tables          = var.tables
    
    default_tags    = var.default_tags
}