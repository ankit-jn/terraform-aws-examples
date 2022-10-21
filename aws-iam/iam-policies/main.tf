module "iam" {
    source = "git::https://github.com/arjstack/terraform-aws-iam.git?ref=v1.0.0?ref=v1.0.0"

    policies = var.policies
    policy_default_tags = var.default_tags
}