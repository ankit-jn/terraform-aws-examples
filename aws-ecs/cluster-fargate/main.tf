module "ecs" {
  source = "git::https://github.com/arjstack/terraform-aws-ecs.git"

  ## ECS CLuster
  cluster_name = "arjstack-dev"
  use_fargate = true

  enable_cloudwatch_container_insights = true

  fargate_capacity_providers = var.fargate_capacity_providers
}