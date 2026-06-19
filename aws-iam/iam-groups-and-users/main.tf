module "iam" {
    source = "git::https://github.com/ankit-jn/terraform-aws-modules.git//aws-iam?ref=main"
    
    identity_account  = true

    manage_account_password_policy  = false
    create_force_mfa_policy         = false

    groups  = var.groups
    users   = var.users
}