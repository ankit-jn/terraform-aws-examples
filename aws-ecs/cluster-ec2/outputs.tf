output "cluster_arn" {
  description = "The ID/ARN of the ECS cluster"
  value       = module.ecs.cluster_arn
}