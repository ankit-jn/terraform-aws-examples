## Engine options Properties
variable "engine" {}
variable "engine_version" {}

## Cluster Settings Properties
variable "cluster_name" {}

## Connectivity Properties
variable "vpc_id" {}
variable "create_neptune_subnet_group" {}
variable "subnets" {}
variable "create_sg" {}
variable "sg_rules" {}
variable "allowed_sg" {}

## Backup Properties
variable "skip_final_snapshot" {}
variable "preferred_backup_window" {}

## Log Exports Properties
variable "enable_cloudwatch_logs_exports" {}

## Maintenance Properties
variable "preferred_maintenance_window" {}

# Neptune Cluster Parameter Group Configurations
variable "create_neptune_cluster_parameter_group" {}
variable "neptune_cluster_parameter_group" {}
variable "neptune_cluster_parameter_group_parameters" {}

# Neptune Instance Parameter Group Configurations
variable "create_neptune_parameter_group" {}
variable "neptune_parameter_group" {}
variable "neptune_parameter_group_parameters" {}

## DB Instances
variable "instance_class" {}
variable "instances" {}
variable "endpoints" {}

## Tags
variable "default_tags" {}
variable "cluster_tags" {}