module "ecs" {
  source = "git::https://github.com/arjstack/terraform-aws-ecs.git"
  
  ## ECS CLuster
  cluster_name = "arjstack-dev"
  use_fargate = true

  enable_cloudwatch_container_insights = true

  fargate_capacity_providers = var.fargate_capacity_providers

  ## Service Discovery
  create_dns_namespace = var.create_dns_namespace
  dns_name = var.dns_name
  vpc_id = var.vpc_id
  enable_service_discovery = var.enable_service_discovery

  ## ECS Service
  create_service = var.create_service
  aws_region = var.aws_region
  
  service_name = var.service_name
  service_scalability = var.service_scalability
  
  container_configurations = var.container_configurations

  policies = var.policies
  
  ecs_task_policies           = var.ecs_task_policies
  ecs_task_execution_policies = var.ecs_task_execution_policies
  
  ## Network Configurations
  subnets = var.subnets
  assign_public_ip = var.assign_public_ip
  
  create_sg = var.create_sg
  sg_name = var.sg_name
  sg_rules  = var.sg_rules

  ## Load balancer
  attach_load_balancer = var.attach_load_balancer
  load_balancer_configs = var.load_balancer_configs

  create_log_group = var.create_log_group
}