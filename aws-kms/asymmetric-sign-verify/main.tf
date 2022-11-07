module "kms" {
    source = "git::https://github.com/arjstack/terraform-aws-kms.git?ref=v1.0.0"

    account_id = var.account_id

    description = var.description

    key_spec = var.key_spec
    key_usage = var.key_usage

    aliases = var.aliases

    deletion_window_in_days = var.deletion_window_in_days

    key_administrators = var.key_administrators
    key_grants_users = var.key_grants_users
    key_asymmetric_sign_verify_users = var.key_asymmetric_sign_verify_users

    tags = var.tags
}