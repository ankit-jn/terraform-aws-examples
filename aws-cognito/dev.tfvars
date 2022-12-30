user_pool_name = "arjstack-user-pool"
recovery_mechanisms = {
    "verified_email" = 1
    "verified_phone_number" = 2
}
schemas = [
    {
        name = "age"
        attribute_data_type = "Number"
        developer_only_attribute = false
        mutable = true
        required = false
        min_value = 1
        max_value = 20
    },
    {
        name = "active"
        attribute_data_type = "Boolean"
        developer_only_attribute = true
        mutable = true
        required = false
    }
]

username_attributes = ["email", "phone_number"]

client_follow_oauth_flows = false
client_token_validity = {
    access_token_validity  = 2
    id_token_validity      = 2
    refresh_token_validity = 10
}

app_clients = [
    {
        name = "arjstack-api"
        token_validity = {
            access_token_validity  = 1
            id_token_validity      = 1
            refresh_token_validity = 5
        }
        callback_urls        = ["https://arjstack.com/callback"]
        default_redirect_uri = "https://arjstack.com/callback"
        
        read_attributes     = ["email", "phone_number"]
        write_attributes    = ["email", "gender", "locale", ]

        follow_oauth_flows   = true
        explicit_auth_flows  = ["CUSTOM_AUTH_FLOW_ONLY", "ADMIN_NO_SRP_AUTH"]
        allowed_oauth_scopes = ["email", "openid"]
        allowed_oauth_flows  = ["code", "implicit"]
    },
    {
        name = "arjstack-test"
        
        callback_urls        = ["https://test-arjstack.com/callback"]
        default_redirect_uri = "https://test-arjstack.com/callback"
        logout_urls          = ["https://test-arjstack.com/logout"]
        
        generate_secret = false
        read_attributes = ["email"]
    }
]

resource_servers = [
    {
        identifier = "https://arjstack.com" 
        name = "arjstack"
        scopes = [
            {
                name = "read"
                description = "Reader"
            }
        ]
    }
]

identity_providers = [
    {
        provider_name = "Google"
        provider_type = "Google"
        provider_details = {
            "client_id" = "your client id",
            "client_secret" = "your client secret",
            "authorize_scopes" = "email",
            "oidc_issuer" = "https://accounts.google.com",
            "authorize_url" = "https://accounts.google.com/o/oauth2/v2/auth",
            "token_url" = "https://www.googleapis.com/oauth2/v4/token",
            "token_request_method" = "POST",
            "attributes_url" = "https://people.googleapis.com/v1/people/me?personFields="
            "attributes_url_add_attributes" = true
        }
        attribute_mapping = {
            "username" = "sub"
        }
    },
    {
        provider_name = "Facebook"
        provider_type = "Facebook"
        provider_details = {
            "client_id" = "your client id",
            "client_secret" = "your client secret",
            "authorize_scopes" = "email",
            "authorize_url" = "https://www.facebook.com/v15.0/dialog/oauth",
            "token_url" = "https://graph.facebook.com/v15.0/oauth/access_token",
            "token_request_method" = "GET",
            "attributes_url" = "https://graph.facebook.com/v15.0/me?fields="
            "attributes_url_add_attributes" = true
        }
        attribute_mapping = {
            "username" = "id"
        }
    },
    {
        provider_name = "LoginWithAmazon"
        provider_type = "LoginWithAmazon"
        provider_details = {
            "client_id" = "your client id",
            "client_secret" = "your client secret",
            "authorize_scopes" = "email",
            "authorize_url" = "https://www.amazon.com/ap/oa",
            "token_url" = "https://api.amazon.com/auth/o2/token",
            "token_request_method" = "POST",
            "attributes_url" = "https://api.amazon.com/user/profile"
            "attributes_url_add_attributes" = false
        }
        attribute_mapping = {
            "username" = "user_id"
        }
    },
    {
        provider_name = "OIDC"
        provider_type = "OIDC"
        provider_details = {
            "client_id" = "your client id",
            "client_secret" = "your client secret",
            "authorize_scopes" = "openid",
            "oidc_issuer" = "https://accounts.google.com",
            "attributes_request_method" = "GET",
            "attributes_url_add_attributes" = false
        }
        attribute_mapping = {
            "username" = "sub"
        }
    },
    # {
    #     provider_name = "SignInWithApple"
    #     provider_type = "SignInWithApple"
    #     provider_details = {
    #         "client_id" = "Your client id"
    #         "team_id" = "Your Team id",
    #         "key_id" = "Your Key",
    #         "private_key" = "Your Private Key",
    #         "authorize_scopes" = "email",
    #     }
    #     attribute_mapping = {
    #         "username" = "sub"
    #     }
    # },
    # {
    #     provider_name = "SAML"
    #     provider_type = "SAML"
    #     provider_details = {
    #         "MetadataURL" = "https://arjstack.com/sps/federation_name/saml20/soap"
    #         "IDPSignout" = true,
    #     }
    #     attribute_mapping = {
    #         "username" = "sub"
    #     }
    # },
]

identity_pool_name = "arjstack-identity-pool"

tags = {
    Environment = "Dev"
    CostCenter  = "1234"
    Owner       = "Arjstack"
    ManagedBy   = "Terraform"
}