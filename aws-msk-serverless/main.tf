module "msk_serverless" {
    source = "git::https://github.com/arjstack/terraform-aws-msk-serverless.git"

    cluster_name = var.cluster_name

    vpc_id = var.vpc_id
    subnets = var.subnets

    create_sg = var.create_sg
    sg_name = var.sg_name
    sg_rules = var.sg_rules

    additional_sg = var.additional_sg

    tags = var.tags
}