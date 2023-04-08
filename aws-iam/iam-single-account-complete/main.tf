module "iam" {
    source = "git::https://github.com/ankit-jn/terraform-aws-iam.git"
   
    identity_account  = true

    manage_account_password_policy  = false
    create_force_mfa_policy         = true

    policies = var.policies
    
    trusted_account_roles   = var.trusted_account_roles
    service_linked_roles    = var.service_linked_roles

    groups  = var.groups
    users   = var.users
    
    policy_default_tags = var.policy_default_tags
    role_default_tags   = var.role_default_tags
}