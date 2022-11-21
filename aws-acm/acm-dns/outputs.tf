output "arn" {
    description = "ARN of the certificate."
    value = module.acm.arn
}

output "status" {
    description = "Status of the certificate."
    value = module.acm.status
}