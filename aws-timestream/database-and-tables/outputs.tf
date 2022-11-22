output "database_arn" {
    description = "The ARN that uniquely identifies this database."
    value       = module.timestream.database_arn
}

output "kms_key_id" {
    description = "The ARN of the KMS key used to encrypt the data stored in the database."
    value       = module.timestream.kms_key_id
}

output "tables" {
    description = "The ARN of the Timestream tables."
    value       = module.timestream.tables
}