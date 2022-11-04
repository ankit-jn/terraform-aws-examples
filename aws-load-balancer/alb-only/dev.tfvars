name = "arjstack-alb"
lb_type = "application"

subnets = [ "subnet-1xx.......", "subnet-2xx......." ]

enable_deletion_protection = false
drop_invalid_header_fields = true

vpc_id = "vpc-xxx........."

create_sg = true
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
                        cidr_blocks = ["0.0.0.0/0"]
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