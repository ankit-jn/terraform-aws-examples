module "msk_serverless" {
    source = "git::https://github.com/ankit-jn/terraform-aws-modules.git//aws-msk-serverless?ref=main"
    
    cluster_name = var.cluster_name

    vpc_configs = var.vpc_configs
    configure_iam_policy = var.configure_iam_policy
    
    tags = var.tags
}