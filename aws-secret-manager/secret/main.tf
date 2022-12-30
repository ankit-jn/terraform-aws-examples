module "secret_manager" {
    # source = "git::https://github.com/arjstack/terraform-aws-secret-manager.git?ref=v1.0.0"
    source = "../../../terraform-aws-secret-manager"

    secret_name = var.secret_name
    secret_description = var.secret_description
    secret_values = var.secret_values

    tags = var.tags
}