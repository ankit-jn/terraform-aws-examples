module "iam_organization" {
    source = "git::https://github.com/arjstack/terraform-aws-iam.git"
    
    organization_account = true

    account_alias = var.account_alias
    
    aws_service_access_principals   = var.aws_service_access_principals
    enabled_policy_types            = var.enabled_policy_types
    feature_set                     = var.feature_set
    
    organization_units = var.organization_units
    organizations_policies = var.organizations_policies
    
    organizations_accounts = var.organizations_accounts

    organization_default_tags = var.default_tags
}