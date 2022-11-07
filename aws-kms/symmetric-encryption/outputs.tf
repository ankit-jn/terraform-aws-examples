output "key_id" {
    description = "The globally unique identifier for the key"
    value       = module.kms.key_id
}

output "key_arn" {
    description = "The Amazon Resource Name (ARN) of the key"
    value       = module.kms.key_arn
}

output "key_policy" {
    description = "The KMS Key Policy"
    value       = module.kms.key_policy
}