engine = "neptune"
engine_version = "1.1.1.0.R6"

cluster_name = "arjstack-neptune-cluster"

vpc_id = "vpc-1x............."
create_neptune_subnet_group = true
subnets = ["subnet-1x...........", "subnet-2x..........."]
create_sg = true
sg_rules = {
    "ingress" = [
                  {
                    rule_name = "Self Ingress Rule"
                    description = "Self Ingress Rule"
                    from_port = 0
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
allowed_sg = ["SG-1xxxxxxx...."]

database_name = "inventory"

skip_final_snapshot = true
preferred_backup_window = "03:00-03:30"

enable_cloudwatch_logs_exports = ["audit"]

preferred_maintenance_window = "Sun:04:00-Sun:04:30"

create_neptune_cluster_parameter_group = true
neptune_cluster_parameter_group = {
    name = "neptune-cluster-arjstack-pg"
    family = "neptune1"
}
neptune_cluster_parameter_group_parameters = [
    {
        name  = "neptune_enable_audit_log"
        value = 1
    }
]

create_neptune_parameter_group = true
neptune_parameter_group = {
    name = "neptune-arjstack-pg"
    family = "neptune1"
}
neptune_parameter_group_parameters = [
    {
        name         = "neptune_query_timeout"
        value        = 25
    }
]

instance_class = "db.r4.large"
instances = [
    {
        name = "first"
    },
    {
        name = "second"
        promotion_tier = 3
        instance_class = "db.r5.large"
        monitoring_granularity = 60
        preferred_maintenance_window = "Mon:04:00-Mon:04:30"
    }
]
endpoints = [
    {
        identifier = "ep-analysis"
        type = "READER"
        static_members = ["second"]
    }
]

default_tags = {
    "CostCenter" = "1234" 
}
cluster_tags = {
    "Environment" = "Development" 
}