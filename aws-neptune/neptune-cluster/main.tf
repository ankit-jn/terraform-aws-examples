module "neptune" {
    # source = "git::https://github.com/arjstack/terraform-aws-neptune.git"
    source = "../../../terraform-aws-neptune"
    engine          = var.engine
    engine_version  = var.engine_version

    cluster_name    = var.cluster_name

    vpc_id                  = var.vpc_id   
    create_neptune_subnet_group  = var.create_neptune_subnet_group
    subnets                 = var.subnets
    create_sg               = var.create_sg
    sg_rules                = var.sg_rules
    allowed_sg              = var.allowed_sg

    skip_final_snapshot = var.skip_final_snapshot
    preferred_backup_window = var.preferred_backup_window

    enable_cloudwatch_logs_exports = var.enable_cloudwatch_logs_exports

    preferred_maintenance_window = var.preferred_maintenance_window

    create_neptune_cluster_parameter_group       = var.create_neptune_cluster_parameter_group
    neptune_cluster_parameter_group              = var.neptune_cluster_parameter_group
    neptune_cluster_parameter_group_parameters   = var.neptune_cluster_parameter_group_parameters

    create_neptune_parameter_group       = var.create_neptune_parameter_group
    neptune_parameter_group              = var.neptune_parameter_group
    neptune_parameter_group_parameters   = var.neptune_parameter_group_parameters
    
    instance_class  = var.instance_class
    instances       = var.instances
    endpoints       = var.endpoints

    default_tags = var.default_tags
    cluster_tags = var.cluster_tags   
}