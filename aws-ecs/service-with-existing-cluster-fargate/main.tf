module "ecs" {
  source = "git::https://github.com/arjstack/terraform-aws-ecs.git"
  
  ## ECS CLuster
  create_cluster = false
  cluster_name = "arjstack-dev" ## Existing ECS Cluster Name
  use_fargate = true

  ## Service Discovery
  vpc_id = var.vpc_id
  enable_service_discovery = var.enable_service_discovery
  dns_name = var.dns_name

  ## ECS Service
  create_service = true
  aws_region = var.aws_region
  
  service_name = var.service_name
  service_scalability = var.service_scalability
  
  container_definition = data.template_file.container_def.rendered

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

data template_file "container_def" {
    template = file("${path.root}/container.json.tpl")
}