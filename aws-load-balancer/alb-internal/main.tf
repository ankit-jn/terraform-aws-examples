module "alb" {
    source = "git::https://github.com/arjstack/terraform-aws-load-balancer.git"
    
    name = "arjstack-alb"
    lb_type = "application"
    internal = true
    
    subnets = [ "subnet-1xx.......", "subnet-2xx......." ]
    
    enable_deletion_protection = false
    drop_invalid_header_fields = true

    # create_sg = false
    # security_groups = ["sg-xxxxxx......"]

    create_sg = true
    vpc_id = "vpc-xxxx......."
    sg_name = "arjstack-alb-sg"
    
    sg_rules = {
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
                            rule_name = "HTTP-80"
                            description = "IPv4 Rule"
                            from_port = 80
                            to_port = 80
                            protocol = "tcp"
                            ## Replace IP with actual values
                            cidr_blocks = ["10.0.0.0/28"]
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

    default_tags = {
        "CostCenter" = "1234"
    }    
}

