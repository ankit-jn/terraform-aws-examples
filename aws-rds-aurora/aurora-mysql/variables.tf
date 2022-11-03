#################################################
## Engine options Properties
#################################################
variable "engine" {
    default = "aurora-mysql"
}

variable "engine_version" {
    default = "5.7"
}

#################################################
## Cluster Settings Properties
#################################################
variable "cluster_name" {
    default = "arjstackdb"
}

variable "password_length" {
    default = 16
}

#################################################
## Connectivity Properties
#################################################
variable "vpc_id" {
    default = "vpc-xxxxx....."
}

variable "create_db_subnet_group" {
    default = true
}

variable "subnets" {
    default = ["subnet-1xxx.........", "subnet-2x.........."]
}
variable "create_sg" {
    default = true
}

variable "sg_rules" {
  default = {
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
}

#################################################
## Additional configuration Properties
#################################################
variable "database_name" {
    default = "inventory"
}

#################################################
## Backup Properties
#################################################
variable "skip_final_snapshot" {
    default = true
}

#################################################
## Encryption Properties
#################################################

#################################################
## Log Exports Properties
#################################################
variable "enabled_cloudwatch_logs_exports" {
    default = ["audit", "error"]
}

#################################################
## Maintenance Properties
#################################################
variable "preferred_maintenance_window" {
    default = "Sun:04:00-Sun:04:30"
}

#################################################
# Cluster Parameter Group Configurations
#################################################
variable "create_db_cluster_parameter_group" {
    default = true
}

variable "db_cluster_parameter_group" {
    default = {
        name = "rds-cluster-arjstack-pg"
        family = "aurora-mysql5.7"
    }
}

variable "db_cluster_parameter_group_parameters" {
    default = [
        {
            name         = "connect_timeout"
            value        = 120
            apply_method = "immediate"
        }
    ]
}

#################################################
# Database Instance Parameter Group Configurations
#################################################
variable "create_db_parameter_group" {
    default = true
}

variable "db_parameter_group" {
    default = {
        name = "rds-db-arjstack-pg"
        family = "aurora-mysql5.7"
    }
}

variable "db_parameter_group_parameters" {
    default = [
        {
            name         = "connect_timeout"
            value        = 60
            apply_method = "immediate"
        }
    ]
}

#################################################
## Monitoring properties
#################################################
variable "enable_enhanced_monitoring" {
    default = true
}

variable "monitoring_granularity" {
    default = 1
}

variable "create_monitoring_role" {
    default = true
}

#################################################
## DB Instances
#################################################
variable "instance_class" {
    default = "db.t3.medium"
}

variable "instances" {
    default = [
        {
            name = "first"
        },
        {
            name = "second"
            instance_class = "db.t3.small"
            monitoring_granularity = 30
        },
        {
            name = "third"
            promotion_tier = 3
            instance_class = "db.t3.small"
            monitoring_granularity = 60
            preferred_maintenance_window = "Mon:04:00-Mon:04:30"
        }
    ]
}

variable "endpoints" {
    default = [
        {
            identifier = "ep-analysis"
            type = "READER"
            static_members = ["third"]
        }
    ]
}

#################################################
## SSM Paramteres
#################################################
variable "ssm_parameter_prefix" {
    default = "/arjstack"
}

#################################################
## Tags
#################################################
variable "default_tags" {
    default = {
        "CostCenter" = "1234" 
  }
}

variable "cluster_tags" {
    default = {
        "Environment" = "Development" 
  }
}