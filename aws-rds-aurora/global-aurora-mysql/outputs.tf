output "global_cluster_arn" {
    value = module.aurora.global_cluster_arn
}

output "primary_cluster_arn" {
    value = module.aurora.cluster_arn
}

output "secondary_cluster_arn" {
    value = module.aurora_secondary.cluster_arn
}

output "primary_cluster_endpoint" {
    value = module.aurora.cluster_endpoint
}

output "secondary_cluster_endpoint" {
    value = module.aurora_secondary.cluster_endpoint
}

output "primary_cluster_reader_endpoint" {
    value = module.aurora.cluster_reader_endpoint
}

output "secondary_cluster_reader_endpoint" {
    value = module.aurora_secondary.cluster_reader_endpoint
}

output "port" {
    value = module.aurora.port
}

output "primary_db_subnet_group" {
    value = module.aurora.db_subnet_group
}

output "secondary_db_subnet_group" {
    value = module.aurora_secondary.db_subnet_group
}

output "primary_instances" {
    value = module.aurora.instances
}

output "secondary_instances" {
    value = module.aurora_secondary.instances
}

output "primary_sg_id" {
    value = module.aurora.sg_id
}

output "secondary_sg_id" {
    value = module.aurora_secondary.sg_id
}

output "rds_monitoring_role" {
    value = module.aurora.rds_monitoring_role
}

output "ssm_paramter_cluster_host" {
    value = module.aurora.ssm_paramter_cluster_host
}

output "ssm_paramter_database_name" {
    value = module.aurora.ssm_paramter_database_name
}

output "ssm_paramter_master_username" {
    value = module.aurora.ssm_paramter_master_username
}

output "ssm_paramter_master_password" {
    value = module.aurora.ssm_paramter_master_password
}