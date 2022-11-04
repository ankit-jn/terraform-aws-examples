## Global Aurora Cluster + Regional Primary Aurora MySQL Cluster
module "aurora" {
    source = "git::https://github.com/arjstack/terraform-aws-rds-aurora.git"
    
    create_global_cluster   = true
    global_cluster_name     = var.global_cluster_name

    engine = var.engine
    engine_version = var.engine_version

    cluster_name = var.cluster_name
    password_length = var.password_length

    vpc_id                  = var.primary_vpc_id   
    db_subnet_group_name    = var.db_subnet_group_name
    subnets                 = var.primary_cluster_subnets
    create_sg               = var.create_sg
    sg_rules                = var.sg_rules
    allowed_sg              = var.primary_allowed_sg

    database_name = var.database_name

    skip_final_snapshot = var.skip_final_snapshot

    enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports

    preferred_maintenance_window = var.preferred_maintenance_window

    create_db_cluster_parameter_group       = var.create_db_cluster_parameter_group
    db_cluster_parameter_group              = var.db_cluster_parameter_group
    db_cluster_parameter_group_parameters   = var.db_cluster_parameter_group_parameters

    create_db_parameter_group       = var.create_db_parameter_group
    db_parameter_group              = var.db_parameter_group
    db_parameter_group_parameters   = var.db_parameter_group_parameters

    enable_enhanced_monitoring  = var.enable_enhanced_monitoring
    monitoring_granularity      = var.monitoring_granularity
    create_monitoring_role      = var.create_monitoring_role
    
    instance_class  = var.instance_class
    instances       = var.instances

    ssm_parameter_prefix = var.ssm_parameter_prefix

    default_tags = var.default_tags
    cluster_tags = var.cluster_tags   
}

## Regional Secondary Aurora MySQL Cluster
module "aurora_secondary" {
    source = "git::https://github.com/arjstack/terraform-aws-rds-aurora.git"

    providers = {
        aws = aws.secondary
    }
    
    engine = var.engine
    engine_version = var.engine_version

    global_cluster_name = var.global_cluster_name

    cluster_name = var.cluster_name
    primary_cluster = false

    vpc_id                  = var.secondary_vpc_id   
    db_subnet_group_name    = var.db_subnet_group_name
    subnets                 = var.secondary_cluster_subnets
    create_sg               = var.create_sg
    sg_rules                = var.sg_rules
    allowed_sg              = var.secondary_allowed_sg

    database_name = var.database_name 

    skip_final_snapshot = var.skip_final_snapshot

    enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports

    preferred_maintenance_window = var.preferred_maintenance_window

    create_db_cluster_parameter_group       = var.create_db_cluster_parameter_group
    db_cluster_parameter_group              = var.db_cluster_parameter_group
    db_cluster_parameter_group_parameters   = var.db_cluster_parameter_group_parameters

    create_db_parameter_group       = var.create_db_parameter_group
    db_parameter_group              = var.db_parameter_group
    db_parameter_group_parameters   = var.db_parameter_group_parameters

    enable_enhanced_monitoring  = var.enable_enhanced_monitoring
    monitoring_granularity      = var.monitoring_granularity
    create_monitoring_role      = false
    
    instance_class  = var.instance_class
    instances       = var.instances

    ssm_parameter_prefix = var.ssm_parameter_prefix
    
    default_tags = var.default_tags
    cluster_tags = var.cluster_tags   

    ## Let the Gloabl Aurora cluster and regional primary cluster be provisioned
    depends_on = [
      module.aurora
    ]
}