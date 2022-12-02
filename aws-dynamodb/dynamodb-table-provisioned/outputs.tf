output "arn" {
    description = "ARN of the Table."
    value       = module.dynamodb.arn
}

output "stream_arn" {
    description = "ARN of the Table Stream."
    value       = module.dynamodb.stream_arn
}

output "stream_label" {
    description = "Timestamp, in ISO 8601 format, for this stream."
    value       = module.dynamodb.stream_label
}