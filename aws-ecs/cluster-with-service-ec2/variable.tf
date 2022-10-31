## ECS Cluster Configurations
variable "autoscaling_capacity_providers" {
  default = [
              {
                name = "PRIMARY"
                asg_name = "arjstack-asg-primary" ## This ASG should be the existing one
                # asg_arn = "<ASG ARN>" ## alternate of asg_name
                managed_termination_protection = "DISABLED"
                configure_managed_scaling = true
                ms_instance_warmup_period = 300
                ms_minimum_scaling_step_size = 1
                ms_maximum_scaling_step_size = 10
                ms_target_capacity = 100
                ms_status = "ENABLED" # DISABLED
                
                default_strategy = {
                    base = 1
                    weight = 3
                }
              }
            ]
}
## Service Discovery Configurations
variable "create_dns_namespace" {
    default = true
}

variable "dns_name" {
    default = "arjstack.ecs.local"
}

variable "vpc_id" {
    default = "vpc-xxx....."
}

variable "enable_service_discovery" {
    default = true
}

## ECS Service Configurations
variable "aws_region" {
  default = "ap-south-1"
}

variable "service_name" {
    default = "currency-service"
}
variable "service_scalability" {
    default = {
        min_capacity      = 2
        max_capacity      = 5
        desired_capacity  = 2
    }
}

variable "container_configurations" {
    default = {
      name            = "currency-container"
      image           = "currency-service"
      container_port  = 8081
      host_port       = 8081

      cpu             = 256
      memory          = 512
      
      log_grp_name       = "arjstack-currency"
    }
}

variable "policies" {
    default = [
                {
                    name = "arjstack-ecr-access"
                    policy_file = "arjstack-ecr-access.json"
                    description = "Access to fetch the docker image from ECR"
                    path = "/"
                    tags = {
                        "Name"      = "ecr-access"
                        "Purpose"   = "Docker Image Access"
                    }
                },
                {
                    name = "arjstack-s3-access"
                    policy_file = "arjstack-s3-access.json"
                    description = "Access to S3 bucket"
                    path = "/"
                    tags = {
                        "Name"      = "s3-access"
                        "Purpose"   = "S3 Access"
                    }
                }
            ]
}

variable "ecs_task_policies" {
    default = [
                {
                  "name" = "arjstack-s3-access"
                },
                {
                  "name"  = "AWSCloudTrail_ReadOnlyAccess"
                  "arn"   = "arn:aws:iam::aws:policy/AWSCloudTrail_ReadOnlyAccess"
                }
              ]
}

variable "ecs_task_execution_policies" {
    default = [
                {
                  "name" = "arjstack-ecr-access"
                } 
              ]
}

## Network configurations
variable "subnets" {
    default = ["subnet-1xxxx......", "subnet-2xxxx......."]
}

variable "assign_public_ip" {
    default     = false
}

variable "create_sg" {
    default = true
}

variable "sg_name" {
    default = "ecs-sg-arjstack"
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
                  },
                  {
                    rule_name = "Ingress from Source SG attached with Load Balancer"
                    description = "Source SG Rule for SG attached with Load Balancer"
                    from_port = 80
                    to_port = 80
                    protocol = "tcp"
                    ## Replace SG ID with actual values
                    source_security_group_id = "sg-xx....." ## SG attached to Load Balncer
                  },
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

## Load balancer Configuration
variable "attach_load_balancer" {
    default = true
}

variable "load_balancer_configs" {
    default = {
      config1 = {
        target_group_name = "alb-target-8081"
        container_name = "currency-container"
        container_port = 8081
      }
    }
}

variable "create_log_group" {
    default = true
}