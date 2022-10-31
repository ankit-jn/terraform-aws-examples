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
              },
              {
                name = "SECONDARY"
                asg_name = "arjstack-asg-secondary" ## This ASG should be the existing one
                # asg_arn = "<ASG ARN>" ## alternate of asg_name
                managed_termination_protection = "DISABLED"
                configure_managed_scaling = true
                ms_instance_warmup_period = 300
                ms_minimum_scaling_step_size = 1
                ms_maximum_scaling_step_size = 10
                ms_target_capacity = 100
                ms_status = "ENABLED" # DISABLED
                
                default_strategy = {
                    weight = 1
                }
              }
            ]
}
