cluster_name = "arjstack-msk-serverless"

vpc_configs = [
    {
        vpc_id = "vpc-xxxxxxxxxxxxxx"
        subnets = ["subnet-1xxxxxx.......", "subnet-2xxxxx........"]

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

        additional_sg = ["sg-1xxxxx......", "sg-2xxx........."]
    },
    {
        vpc_id = "vpc-zzzzzzzzzzz"
        subnets = ["subnet-1zzz........", "subnet-2zzzz......."]

        create_sg = true
        # sg_name = "arjstack-msk-serverless-sg"
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

        additional_sg = ["sg-3zzzzz.........."]
    }
]

configure_iam_policy = true

tags = {
    "CostCenter" = 1234
    "Environment" = "Development"
}
