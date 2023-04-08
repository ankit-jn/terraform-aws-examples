module "iam" {
    source = "git::https://github.com/ankit-jn/terraform-aws-iam.git"
   
    policies = var.policies
    
    trusted_account_roles   = var.trusted_account_roles
    service_linked_roles    = var.service_linked_roles

    policy_default_tags = var.default_tags
    role_default_tags   = var.default_tags
}