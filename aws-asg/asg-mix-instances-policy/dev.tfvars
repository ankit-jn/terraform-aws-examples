name = "arjstack-asg"

min_size = 2
max_size = 5
desired_capacity = 3

vpc_zone_identifier = [
    "subnet-xxxx.............", 
    "subnet-yyyy.............", 
    "subnet-zzzz............."
]

capacity_rebalance = false
default_cooldown = 300
default_instance_warmup = 100
protect_from_scale_in = false

use_mixed_instances_policy = true
mixed_instances_policy = {
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


launch_template_name = "arjstack-asg-template"
launch_template_description = "Launch Temnplate for arjstack-asg"
instance_type = "t2.nano"
ssm_param_image = "/aws/service/ecs/optimized-ami/amazon-linux-2/recommended"
health_check_type = "EC2"
block_device_mappings = [
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


instance_profile_name = "arjstack-asg-instance-profile"   
instance_profile_path = "/" 
instance_profile_policies = [
    {
        "name" = "arjstack-s3-readonly-access"
        "policy_file" = "arjstack-s3-readonly-access.json"
    },
    {
        "name" = "arjstack-application-development"
        "policy_file" = "arjstack-application-development.json"
    },
    {
        "name"  = "AWSCloudTrail_ReadOnlyAccess"
        "arn"   = "arn:aws:iam::aws:policy/AWSCloudTrail_ReadOnlyAccess"
    }
]


default_tags = {
    "CostCenter" = "1234" 
}
asg_tags = {
    "Name" = "My ASG" 
}
instance_profile_tags = {
    "Environment" = "Development" 
}
launch_template_tags = {
    "Application" = "Terraform Training" 
}
as_resource_tags = [
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
