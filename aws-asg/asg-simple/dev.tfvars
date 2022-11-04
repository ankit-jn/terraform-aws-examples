name = "arjstack-asg"

min_size = 1
max_size = 3
desired_capacity = 2

vpc_zone_identifier = [
    "subnet-xxxx.............", 
    "subnet-yyyy.............", 
    "subnet-zzzz............."
]

capacity_rebalance = false
default_cooldown = 300
default_instance_warmup = 100
protect_from_scale_in = false

launch_template_name = "arjstack-asg-template"
launch_template_description = "Launch Temnplate for arjstack-asg"
instance_type = "t2.nano"
ssm_param_image = "/aws/service/ecs/optimized-ami/amazon-linux-2/recommended"
health_check_type = "EC2"

instance_profile_name = "arjstack-asg-instance-profile"   
instance_profile_path = "/" 
instance_profile_role_name = "role-testing" ## Existing IAM role

default_tags = {
    "CostCenter" = "1234" 
}
instance_profile_tags = {
    "Environment" = "Development" 
}