module "iam" {
    source = "git::https://github.com/ankit-jn/terraform-aws-modules.git//aws-iam?ref=main"
    
    policies = var.policies
    policy_default_tags = var.default_tags
}