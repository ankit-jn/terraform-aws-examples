module "iam_identity_account" {
    source = "git::https://github.com/ankit-jn/terraform-aws-iam.git"
    
    identity_account  = true

    manage_account_password_policy  = false
    create_force_mfa_policy         = true

    policies = var.identity_policies

    groups  = var.groups
    users   = var.users
    
}

module "iam_dev_account" {
    source = "git::https://github.com/ankit-jn/terraform-aws-iam.git"
   
    providers = {
        aws = aws.dev
    }

    identity_account  = false
    manage_account_password_policy  = false

    policies = var.dev_policies
    
    trusted_account_roles   = var.dev_trusted_account_roles
    service_linked_roles    = var.dev_service_linked_roles

    policy_default_tags = var.dev_policy_default_tags
    role_default_tags   = var.dev_role_default_tags
}