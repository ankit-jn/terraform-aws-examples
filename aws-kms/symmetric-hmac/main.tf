module "kms" {
    source = "git::https://github.com/arjstack/terraform-aws-kms.git"

    account_id = var.account_id

    description = var.description

    key_spec = var.key_spec
    key_usage = var.key_usage

    aliases = var.aliases

    enable_key_rotation = var.enable_key_rotation

    key_administrators = var.key_administrators
    key_grants_users = var.key_grants_users
    key_symmetric_hmac_users = var.key_symmetric_hmac_users

    tags = var.tags
}