output "global_cluster_arn" {
    value = module.rds.global_cluster_arn
}

output "cluster_arn" {
    value = module.rds.cluster_arn
}

output "port" {
    value = module.rds.port
}

output "db_subnet_group" {
    value = module.rds.db_subnet_group
}

output "instances" {
    value = module.rds.instances
}

output "cluster_endpoint" {
    value = module.rds.cluster_endpoint
}

output "cluster_reader_endpoint" {
    value = module.rds.cluster_reader_endpoint
}

output "custom_endpoints" {
    value = module.rds.custom_endpoints
}

output "rds_monitoring_role" {
    value = module.rds.rds_monitoring_role
}

output "ssm_paramter_cluster_host" {
    value = module.rds.ssm_paramter_cluster_host
}

output "ssm_paramter_database_name" {
    value = module.rds.ssm_paramter_database_name
}

output "ssm_paramter_master_username" {
    value = module.rds.ssm_paramter_master_username
}

output "ssm_paramter_master_password" {
    value = module.rds.ssm_paramter_master_password
}

output "sg_id" {
    value = module.rds.sg_id
}