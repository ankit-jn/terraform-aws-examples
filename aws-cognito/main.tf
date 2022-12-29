module "cognito" {
    # source = "git::https://github.com/arjstack/terraform-aws-cognito.git?ref=v1.0.0"
    source = "../../terraform-aws-cognito"  

    user_pool_name = var.user_pool_name
    recovery_mechanisms = var.recovery_mechanisms  
    schemas = var.schemas
    username_attributes = var.username_attributes

    app_clients = var.app_clients
}