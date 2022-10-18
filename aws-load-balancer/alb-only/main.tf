module "alb" {
    source = "git::https://github.com/arjstack/terraform-aws-load-balancer.git"
    
    name = "arjstack-alb"
    internal = false
    lb_type = "application"
    enable_access_logs = true
    access_logs = {
        bucket = "arj-alb-logs"  // Bucket should have permission open so that ALB can reach out
    }
    subnets = [ "subnet-1xxxx.......", "subnet-2xxx........." ]
    enable_deletion_protection = false

    # create_sg = false
    # security_groups = ["sg-xxxxxx......"]

    create_sg = true
    vpc_id = "vpc-xxxxx........"
    sg_name = "alb-sg-test"
    
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
    
    drop_invalid_header_fields = true

    default_tags = {
        "CostCenter" = "1234"
    }
    
}

