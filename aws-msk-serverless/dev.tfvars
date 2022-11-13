cluster_name = "arjstack-msk-serverless"

vpc_id = "vpc-xxxxxxxxxxx"
subnets = ["subnet-1xxxxx.......", "subnet-2xxxxxxxxx"]

create_sg = true
sg_name = "arjstack-msk-serverless-sg"
sg_rules = {
    "ingress" = [
                  {
                    rule_name = "Self Ingress Rule"
                    description = "Self Ingress Rule"
                    from_port = 0
                    to_port = 0
                    protocol = "-1"

                    self = true
                  }
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

additional_sg = ["sg-1xxxxxxxxxxx", "sg-2xxxxxxxxxxx"]

tags = {
    "CostCenter" = 1234
    "Environment" = "Development"
}
