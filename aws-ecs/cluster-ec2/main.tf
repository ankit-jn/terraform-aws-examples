module "ecs" {
  source = "git::https://github.com/ankit-jn/terraform-aws-ecs.git"
  
  cluster_name  = var.cluster_name
  use_fargate   = var.use_fargate

  enable_cloudwatch_container_insights = var.enable_cloudwatch_container_insights

  autoscaling_capacity_providers = var.autoscaling_capacity_providers
}