module "gateway_lb" {
    source = "git::https://github.com/arjstack/terraform-aws-load-balancer.git?ref=v1.0.0"
    
    name = "arjstack-gateway-lb"
    lb_type = "gateway"

    vpc_id = "vpc-xxxxx........."
    subnets = [ "subnet-1xxxx..........", "subnet-2x............." ]
    
    enable_deletion_protection = true
    drop_invalid_header_fields = false
    enable_cross_zone_load_balancing = true

    target_groups = [
        {
            name = "lb-target-ip"
            target_type  = "ip"
            interval = 60

            health_check = {
                healthy_threshold = 5
                unhealthy_threshold = 3
            }            
        },
        {
            name = "lb-target-instance"
            target_type  = "instance"
            interval = 60

            health_check = {
                healthy_threshold = 5
                unhealthy_threshold = 3
            }
        }
    ]

    gateway_listener = {
        target_group = "lb-target-ip"
    }
    
    default_tags = {
        "CostCenter" = "1234"
    }
    
}

