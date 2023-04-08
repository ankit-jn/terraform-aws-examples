module "cognito_user_pool" {
    source = "git::https://github.com/ankit-jn/terraform-aws-cognito.git"
    
    create_user_pool = true
    user_pool_name = var.user_pool_name
    recovery_mechanisms = var.recovery_mechanisms  
    schemas = var.schemas
    username_attributes = var.username_attributes

    client_follow_oauth_flows = var.client_follow_oauth_flows
    client_token_validity = var.client_token_validity
    app_clients = var.app_clients

    resource_servers = var.resource_servers
    identity_providers = var.identity_providers

    tags = var.tags
}

module "cognito_identity_pool" {
    source = "git::https://github.com/ankit-jn/terraform-aws-cognito.git"
    
    create_identity_pool = true
    identity_pool_name = var.identity_pool_name
    
    cognito_identity_providers = [
        for client in var.app_clients: {
            userpool_client_id = module.cognito_user_pool.user_pool_app_client_ids[client.name]
            userpool_endpoint = module.cognito_user_pool.user_pool_endpoint
            server_side_token_check = false
        }
    ]
    # saml_providers = ["arn:aws:iam::<AWS Account ID>:saml-provider/<SAML Provider Name>"]

    tags = var.tags
}