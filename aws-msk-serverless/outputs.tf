output "arn" {
    description = "The ARN of the serverless MSK cluster."
    value       = module.msk_serverless.arn
}

output "security_groups" {
    description = "The Security Group ID associated to MSK"
    value       = module.msk_serverless.security_groups
}

output "policy_arn" {
    description = "The ARN assigned by AWS to this policy."
    value = module.msk_serverless.policy_arn
}