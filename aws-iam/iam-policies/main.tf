module "iam" {
    source = "git::https://github.com/arjstack/terraform-aws-iam.git"

    policies = var.policies
    policy_default_tags = var.default_tags
}