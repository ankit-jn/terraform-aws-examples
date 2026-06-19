module "keyspaces" {
    source = "git::https://github.com/ankit-jn/terraform-aws-modules.git//aws-keyspaces?ref=main"
    
    keyspace_name   = var.keyspace_name
    default_tags    = var.default_tags
}