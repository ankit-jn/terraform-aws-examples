module "secret_manager" {
    source = "git::https://github.com/ankit-jn/terraform-aws-modules.git//aws-secret-manager?ref=main"
    
    secret_name = var.secret_name
    secret_description = var.secret_description
    secret_values = var.secret_values

    tags = var.tags
}