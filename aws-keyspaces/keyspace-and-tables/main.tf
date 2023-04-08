module "keyspaces" {
    source = "git::https://github.com/ankit-jn/terraform-aws-keyspaces"
    
    keyspace_name   = var.keyspace_name

    keyspace_tables = var.keyspace_tables
    
    default_tags    = var.default_tags
}