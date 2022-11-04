variable "global_cluster_name" {}

## Engine options Properties
variable "engine" {}
variable "engine_version" {}

## Cluster Settings Properties
variable "cluster_name" {}
variable "password_length" {}

## Connectivity Properties
variable "primary_vpc_id" {}
variable "secondary_vpc_id" {}
variable "db_subnet_group_name" {}
variable "primary_cluster_subnets" {}
variable "secondary_cluster_subnets" {}
variable "create_sg" {}
variable "sg_rules" {}
variable "primary_allowed_sg" {}
variable "secondary_allowed_sg" {}

## Additional configuration Properties
variable "database_name" {}

## Backup Properties
variable "skip_final_snapshot" {}

## Log Exports Properties
variable "enabled_cloudwatch_logs_exports" {}

## Maintenance Properties
variable "preferred_maintenance_window" {}

# Cluster Parameter Group Configurations
variable "create_db_cluster_parameter_group" {}
variable "db_cluster_parameter_group" {}
variable "db_cluster_parameter_group_parameters" {}

# Database Instance Parameter Group Configurations
variable "create_db_parameter_group" {}
variable "db_parameter_group" {}
variable "db_parameter_group_parameters" {}

## Monitoring properties
variable "enable_enhanced_monitoring" {}
variable "monitoring_granularity" {}
variable "create_monitoring_role" {}

## DB Instances
variable "instance_class" {}
variable "instances" {}

## SSM Paramteres
variable "ssm_parameter_prefix" {}

## Tags
variable "default_tags" {}
variable "cluster_tags" {}