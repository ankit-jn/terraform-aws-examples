##########################################
### ASG Specific Variables
##########################################
variable "name" {
    default = "arjstack-asg"
}

variable "min_size" {
    default = 2
}

variable "max_size" {
    default = 5
}

variable "desired_capacity" {
  default = 3
}

# Replace the Subnet IDs with real values
variable "vpc_zone_identifier" {
    default = [
                # "subnet-xxxx.............", 
                # "subnet-yyyy.............", 
                # "subnet-zzzz............."
            ]
}

variable "capacity_rebalance" {
    default = false
}

variable "default_cooldown" {
    default = 300
}

variable "default_instance_warmup" {
    default = 100
}

variable "protect_from_scale_in" {
  default = false
}

variable "use_mixed_instances_policy" {
    default = true
}

variable "mixed_instances_policy" {
  default     = {
    override = [
      {
        instance_type = "t2.nano"
        weighted_capacity = "3"
      },
      {
        instance_type = "t2.micro"
        weighted_capacity = "2"
      }
    ]
    instances_distribution = {
      on_demand_allocation_strategy            = "prioritized"
      on_demand_base_capacity                  = 0
      on_demand_percentage_above_base_capacity = 25
      spot_allocation_strategy                 = "capacity-optimized"
      spot_instance_pools                      = 0
    #   spot_max_price                           = "2"
    }
  }
}
##########################################
### Launch template Specific Variables
########################################## 
variable "launch_template_name" {
    default = "arjstack-asg-template"
}

variable "launch_template_description" {
    default = "Launch Temnplate for arjstack-asg"
}

variable "instance_type" {
  default = "t2.nano"
}

variable "ssm_param_image" {
    default = "/aws/service/ecs/optimized-ami/amazon-linux-2/recommended"
}

variable "health_check_type" {
  default = "EC2"
}

variable "block_device_mappings" {
    default = [
                {
                    # Volume 1: AMI Root (Custom)
                    name = "/dev/xvda"
                    no_device   = 0
                    ebs_delete_on_termination = true
                    ebs_encrypted             = true
                    ebs_volume_size           = 30
                    ebs_volume_type           = "gp2"
                }, 
                {
                    # Volume 2: Non Root (Custom)
                    name = "/dev/sdb"
                    no_device   = 1
                    ebs_delete_on_termination = true
                    ebs_encrypted             = true
                    ebs_volume_size           = 30
                    ebs_volume_type           = "gp2"
                }
            ]
}


##########################################
### Instance Profile Specific Variables
##########################################
variable "instance_profile_name" {
    default = "arjstack-asg-instance-profile"   
}

variable "instance_profile_path" {
    default = "/" 
}

variable "instance_profile_policies" {
  default = [
                {
                    "name" = "arjstack-s3-readonly-access"
                },
                {
                    "name" = "arjstack-application-development"
                },
                {
                    "name"  = "AWSCloudTrail_ReadOnlyAccess"
                    "arn"   = "arn:aws:iam::aws:policy/AWSCloudTrail_ReadOnlyAccess"
                }
            ]
}

##########################################
### Tags
##########################################
variable "default_tags" {
    default     = {
        "CostCenter" = "1234" 
    }
}

variable "asg_tags" {
    default     = {
        "Name" = "My ASG" 
    }
}

variable "instance_profile_tags" {
    default     = {
        "Environment" = "Development" 
    }
}

variable "launch_template_tags" {
    default     = {
        "Application" = "Terraform Training" 
    }
}

variable "as_resource_tags" {
    default = [
                {
                    resource_type = "instance"
                    tags = { 
                        "RunTime" = "24x7"
                    }
                },
                {
                    resource_type = "volume"
                    tags = { 
                        "RunTime" = "24x7"
                    }
                },
            ]
}