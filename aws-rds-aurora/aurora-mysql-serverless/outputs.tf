output "global_cluster_arn" {
    value = module.aurora.global_cluster_arn
}

output "cluster_arn" {
    value = module.aurora.cluster_arn
}

output "cluster_endpoint" {
    value = module.aurora.cluster_endpoint
}

output "cluster_reader_endpoint" {
    value = module.aurora.cluster_reader_endpoint
}

output "port" {
    value = module.aurora.port
}

output "db_subnet_group" {
    value = module.aurora.db_subnet_group
}

output "instances" {
    value = module.aurora.instances
}

output "custom_endpoints" {
    value = module.aurora.custom_endpoints
}

output "sg_id" {
    value = module.aurora.sg_id
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