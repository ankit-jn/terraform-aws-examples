module "devops" {
    source = "git::https://github.com/ankit-jn/terraform-aws-modules.git//aws-devops?ref=main"
    
    create_repository = var.create_repository
    repository_name = var.repository_name
    
    default_tags    = var.default_tags
    repository_tags = var.repository_tags
}