module "aurora" {
    source = "git::https://github.com/ankit-jn/terraform-aws-rds-aurora.git"
    
    engine = var.engine
    engine_mode = var.engine_mode
    engine_version = var.engine_version

    cluster_name = var.cluster_name
    password_length = var.password_length

    vpc_id                  = var.vpc_id
    db_subnet_group_name    = var.db_subnet_group_name
    subnets                 = var.subnets
    create_sg               = var.create_sg
    sg_rules                = var.sg_rules
    allowed_sg              = var.allowed_sg

    database_name = var.database_name

    skip_final_snapshot = var.skip_final_snapshot

    storage_encrypted = var.storage_encrypted

    enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports

    preferred_maintenance_window = var.preferred_maintenance_window

    serverlessv2_scaling_configuration = var.serverlessv2_scaling_configuration

    create_db_cluster_parameter_group       = var.create_db_cluster_parameter_group
    db_cluster_parameter_group              = var.db_cluster_parameter_group
    db_cluster_parameter_group_parameters   = var.db_cluster_parameter_group_parameters

    create_db_parameter_group       = var.create_db_parameter_group
    db_parameter_group              = var.db_parameter_group
    db_parameter_group_parameters   = var.db_parameter_group_parameters

    enable_enhanced_monitoring  = var.enable_enhanced_monitoring
    create_monitoring_role      = var.create_monitoring_role
    monitoring_granularity      = var.monitoring_granularity

    instance_class  = var.instance_class
    instances       = var.instances

    ssm_parameter_prefix = var.ssm_parameter_prefix

    default_tags = var.default_tags
    cluster_tags = var.cluster_tags    
    
}