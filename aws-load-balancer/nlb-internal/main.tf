module "nlb" {
    source = "git::https://github.com/arjstack/terraform-aws-load-balancer.git"
    
    name = "arjstack-nlb"
    lb_type = "network"
    internal = true
    
    // No need to define `subnets` if `subnet_mappings` are defined, 
    // Even If it is defined in combination with `subnet_mappings`, 
    // the property `subnet_mappings` will take preference over `subnets`
    subnets = [ "subnet-1xxxx.........", "subnet-2xxxx........." ]

    subnet_mappings = [
        {
            subnet_id = "subnet-1xxxx........." ## CIDR: 172.31.32.0/20
            private_ipv4_address = "172.31.46.135"
        },
        {
            subnet_id = "subnet-2xxxx........." ## CIDR: 172.31.0.0/20
            ## If not given, Automatically assigned from Subnet CIDRs
            # private_ipv4_address = "172.31.0.10" 
        }
    ]

    enable_deletion_protection = false
    enable_cross_zone_load_balancing = true

    default_tags = {
        "CostCenter" = "1234"
    }
    
}

