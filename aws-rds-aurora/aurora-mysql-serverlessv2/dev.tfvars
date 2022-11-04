engine = "aurora-mysql"
engine_mode = "provisioned"
engine_version = "5.7"

cluster_name = "arjstackdb"
password_length = 16

vpc_id = "vpc-1x............."
db_subnet_group_name = "arjstack-db-subnet-group"
subnets = ["subnet-1x...........", "subnet-2x..........."]
create_sg = true
sg_rules = {
    "ingress" = [
                  {
                    rule_name = "Self Ingress Rule"
                    description = "Self Ingress Rule"
                    from_port =0
                    to_port = 0
                    protocol = "-1"

                    self = true
                  }
                ],
    "egress" = [
                  {
                    rule_name = "Self Egress Rule"
                    description = "Self Egress Rule"
                    from_port = 0
                    to_port = 0
                    protocol = "-1"

                    self = true
                  },
               ]
}
allowed_sg = ["sg-1xxxxxxx....", "sg-2xxxxxxx...."]

database_name = "inventory"

skip_final_snapshot = true

storage_encrypted = true

enabled_cloudwatch_logs_exports = ["audit", "error"]

preferred_maintenance_window = "Sun:04:00-Sun:04:30"

serverlessv2_scaling_configuration = {
    min_capacity             = 1
    max_capacity             = 4
}

create_db_cluster_parameter_group = true
db_cluster_parameter_group = {
    name = "aurora-cluster-arjstack-pg"
    family = "aurora-mysql5.7"
}
db_cluster_parameter_group_parameters = [
    {
        name         = "connect_timeout"
        value        = 120
        apply_method = "immediate"
    }
]

create_db_parameter_group = true
db_parameter_group = {
    name = "aurora-db-arjstack-pg"
    family = "aurora-mysql5.7"
}
db_parameter_group_parameters = [
    {
        name         = "connect_timeout"
        value        = 60
        apply_method = "immediate"
    }
]

enable_enhanced_monitoring = true
monitoring_granularity = 1
create_monitoring_role = true

instance_class = "db.serverless"
instances = [
    {
        name = "first"
        monitoring_granularity = 30
    },
    {
        name = "second"
        promotion_tier = 3
        monitoring_granularity = 60
        preferred_maintenance_window = "Mon:04:00-Mon:04:30"
    }
]

ssm_parameter_prefix = "/arjstack"

default_tags = {
    "CostCenter" = "1234" 
}
cluster_tags = {
    "Environment" = "Development" 
}
