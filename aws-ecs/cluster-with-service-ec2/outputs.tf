output "cluster_arn" {
  description = "The ID/ARN of the ECS cluster"
  value       = module.ecs.cluster_arn
}

output "service_discovery_namespace_id" {
    description = "ID of Service Discovery Private Namespace"
    value = module.ecs.service_discovery_namespace_id
}

output "service_discovery_namespace_arn" {
    description = "ARN of Service Discovery Private Namespace"
    value = module.ecs.service_discovery_namespace_arn
}

output "service_arn" {
    description = "ARN of ECS Service"
    value       = module.ecs.service_arn
}

output "task_definition_arn" {
    description = "Full ARN of the Task Definition"
    value       = module.ecs.task_definition_arn
}

output "ecs_task_role" {
    description = "IAM Role for ECS Task with trusted Entity - ECS Task Service"
    value = module.ecs.ecs_task_role
}

output "ecs_task_execution_role" {
    description = "IAM Role for ECS Task Exeution with trusted Entity - ECS Task Service"
    value = module.ecs.ecs_task_execution_role
}

output "service_log_group_name" {
    description = "Name of the Cloudwatch log Group for ECS Service"
    value       = module.ecs.service_log_group_name
}

output "service_log_group_arn" {
    description = "ARN of the Cloudwatch log Group for ECS Service"
    value       = module.ecs.service_log_group_arn
}

output "service_discovery_id" {
    description = "ID of Service Discovery"
    value = module.ecs.service_discovery_id
}

output "service_discovery_arn" {
    description = "ARN of Service Discovery"
    value = module.ecs.service_discovery_arn
}