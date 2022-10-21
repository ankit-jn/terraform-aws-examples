module "nlb" {
    source = "git::https://github.com/arjstack/terraform-aws-load-balancer.git"
    
    name = "arjstack-nlb"
    lb_type = "network"

    vpc_id = "vpc-xxxxx........."
    
    // No need to define `subnets` if `subnet_mappings` are defined, 
    // Even If it is defined in combination with `subnet_mappings`, 
    // the property `subnet_mappings` will take preference over `subnets`
    subnets = [ "subnet-1xxxx..........", "subnet-2x............." ]

    subnet_mappings = [
        {
            subnet_id = "subnet-1xxxx.........."
            create_eip = true
            ## it will be skipped simply as LB is internet facing
            private_ipv4_address = "172.31.46.135"
        },
        {
            subnet_id = "subnet-2x............."
            create_eip = true
        }
    ]

    enable_deletion_protection = false
    enable_cross_zone_load_balancing = true

    default_tags = {
        "CostCenter" = "1234"
    }
    
}

