module "nlb" {
    source = "git::https://github.com/arjstack/terraform-aws-load-balancer.git"
    
    name = "arjstack-nlb"
    internal = false
    lb_type = "network"
    enable_access_logs = true
    access_logs = {
        bucket = "alb-logs" // Bucket should have permission open so that ALB can reach out
    }
    // No need to define `subnets` if `subnet_mappings` are defined, 
    // Even If it is defined in combination with `subnet_mappings`, 
    // the property `subnet_mappings` will take preference over `subnets`
    subnets = [ 
        "subnet-1xxx..........", 
        "subnet-2xxxxxx.......",
        "subnet-3xxxx........."
         ]
    
    enable_deletion_protection = false
    enable_cross_zone_load_balancing = true

    subnet_mappings = [
        {
            subnet_id = "subnet-1xxx.........."
            create_eip = true
            private_ipv4_address = "172.31.46.135" ## it will be skipped simply as LB is internet facing
            # ipv6_address = "::/0"
        },
        {
            subnet_id = "subnet-2xxxxxx......."
            create_eip = true
        },
        {
            subnet_id = "subnet-3xxxx........."
            allocation_id = "<Allocation ID>"
            private_ipv4_address = "<Private IP from this subnet>" ## it will be skipped simply as LB is internet facing
        },
    ]

    default_tags = {
        "CostCenter" = "1234"
    }
    
}

