module "gateway_lb" {
    source = "git::https://github.com/arjstack/terraform-aws-load-balancer.git"
    
    name = "arjstack-gateway-lb"
    lb_type = "gateway"
    
    subnets = [ "subnet-1xxxx.......", "subnet-2xxx........." ]
    
    enable_deletion_protection = false
    drop_invalid_header_fields = true
    enable_cross_zone_load_balancing = true

    create_sg = true
    vpc_id = "vpc-xxxxx........"
    sg_name = "gatway-lb-sg-test"
    
    sg_rules = {
        "ingress" = [
                    {
                        rule_name = "Self Ingress Rule"
                        description = "Self Ingress Rule"
                        from_port = 0
                        to_port = 0
                        protocol = "-1"

                        self = true
                    },
                    {
                        rule_name = "UDP Traffic for Gateway Load Balancer"
                        description = "SUDP Traffic for Gateway Load Balancer"
                        from_port = 6081
                        to_port = 6081
                        protocol = "UDP"

                        cidr_blocks = ["XX.XX.XX.XX/XX"]
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

    enable_access_logs = true
    access_logs = {
        bucket = "arjstack-lb-logs"  // Bucket should have permission open so that ALB can reach out
    }

    default_tags = {
        "CostCenter" = "1234"
    }
    
}

