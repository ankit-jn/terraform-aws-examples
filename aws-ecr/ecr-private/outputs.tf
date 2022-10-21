output "ecr_configs" {
    description = "ARN of the ECR repositories"
    value = module.ecr.ecr_configs
}
