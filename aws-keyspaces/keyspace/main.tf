module "keyspaces" {
    source = "git::https://github.com/arjstack/terraform-aws-keyspaces?ref=v1.0.0"
    
    keyspace_name   = var.keyspace_name
    default_tags    = var.default_tags
}