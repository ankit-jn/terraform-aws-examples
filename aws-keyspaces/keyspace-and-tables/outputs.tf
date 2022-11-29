output "keyspace_arn" {
    description = "The ARN of the keyspace."
    value       = module.keyspaces.keyspace_arn
}

output "keyspace_tables" {
    description = "The ARN of the Keyspace tables."
    value       = module.keyspaces.keyspace_tables
}