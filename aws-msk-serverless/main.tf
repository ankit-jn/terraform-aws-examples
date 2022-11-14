module "msk_serverless" {
    source = "git::https://github.com/arjstack/terraform-aws-msk-serverless.git?ref=v1.0.0"
    
    cluster_name = var.cluster_name

    vpc_configs = var.vpc_configs
    configure_iam_policy = var.configure_iam_policy
    
    tags = var.tags
}