module "iam" {
    source = "git::https://github.com/arjstack/terraform-aws-iam.git?ref=v1.0.0"
    
    identity_account  = true

    manage_account_password_policy  = false
    create_force_mfa_policy         = false

    groups  = var.groups
    users   = var.users
}