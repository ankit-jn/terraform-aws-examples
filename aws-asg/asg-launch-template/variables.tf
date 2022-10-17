##########################################
### ASG Specific Variables
##########################################
variable "name" {
    default = "arjstack-asg"
}

variable "min_size" {
    default = 1
}

variable "max_size" {
    default = 3
}

variable "desired_capacity" {
  default = 2
}

# Replace the Subnet IDs with real values
variable "vpc_zone_identifier" {
    default = [
                "subnet-xxxx.............", 
                "subnet-yyyy.............", 
                "subnet-zzzz............."
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
  description = "(Optional) A map of tags to assign to all the resource."
  type        = map(any)
  default     = {
        "CostCenter" = "1234" 
  }
}

variable "instance_profile_tags" {
  description = "(Optional) A map of tags to assign to Instance Profile and role."
  type        = map(any)
  default     = {
        "Environment" = "Development" 
  }
}
