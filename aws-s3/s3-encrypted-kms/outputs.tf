output "id" {
    description = "The name of the bucket."
    value = module.s3.id
}

output "arn" {
    description = "The ARN of the bucket."
    value = module.s3.arn
}

output "kms_key" {
    description = "KMS customer master key (CMK) to be used for encrypting the bucket objects"
    value = module.s3.kms_key
}