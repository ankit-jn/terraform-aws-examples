variable "create_cluster" {}
variable "cluster_name" {}
variable "use_fargate" {}

## Service Discovery Configurations
variable "enable_service_discovery" {}
variable "dns_name" {}
variable "vpc_id" {}

## ECS Service Configurations
variable "aws_region" {}
variable "create_service" {}
variable "service_name" {}
variable "service_scalability" {}
variable "service_task_cpu" {}
variable "service_task_memory" {}

variable "policies" {}
variable "ecs_task_policies" {}
variable "ecs_task_execution_policies" {}

## Network configurations
variable "subnets" {}
variable "assign_public_ip" {}

variable "create_sg" {}
variable "sg_name" {}
variable "sg_rules" {}

## Load balancer Configuration
variable "attach_load_balancer" {}
variable "load_balancer_configs" {}

variable "create_log_group" {}