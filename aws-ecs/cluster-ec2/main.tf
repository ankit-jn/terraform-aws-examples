module "ecs" {
  source = "git::https://github.com/arjstack/terraform-aws-ecs.git?ref=v1.0.0"
  
  ## ECS CLuster
  cluster_name = "arjstack-dev"
  use_fargate = false

  enable_cloudwatch_container_insights = true

  autoscaling_capacity_providers = var.autoscaling_capacity_providers
}