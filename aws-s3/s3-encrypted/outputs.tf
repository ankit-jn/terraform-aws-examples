output "id" {
    description = "The name of the bucket."
    value = module.s3.id
}

output "arn" {
    description = "The ARN of the bucket."
    value = module.s3.arn
}