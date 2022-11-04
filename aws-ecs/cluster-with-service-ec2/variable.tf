variable "cluster_name" {}
variable "use_fargate" {}

variable "enable_cloudwatch_container_insights" {}

## ECS Cluster Configurations
variable "autoscaling_capacity_providers" {}

## Service Discovery Configurations
variable "create_dns_namespace" {}
variable "dns_name" {}
variable "vpc_id" {}
variable "enable_service_discovery" {}

## ECS Service Configurations
variable "create_service" {}
variable "aws_region" {}
variable "service_name" {}
variable "service_scalability" {}
variable "container_configurations" {}
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