module "keyspaces" {
    source = "git::https://github.com/arjstack/terraform-aws-keyspaces?ref=v1.0.0"
    
    keyspace_name   = var.keyspace_name

    keyspace_tables = var.keyspace_tables
    
    default_tags    = var.default_tags
}