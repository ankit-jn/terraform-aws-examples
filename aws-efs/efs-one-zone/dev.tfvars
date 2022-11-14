name = "arjstack-one-zone-efs"
availability_zone_name = "ap-south-1a"

throughput_mode = "bursting"

encrypt_disk = true
create_kms_key = true

mount_targets = [
    {
        subnet_id = "subnet-1xxxxxxxxxxx"
    }
]

transition_to_ia = 90
transition_from_ia = 1

attach_policy_prevent_anonymous_access = true

create_sg = true
vpc_id = "vpc-xxxxxxxxxxxxx"

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
allowed_sg = ["sg-1xxxxxxxxxx"]
additional_sg = ["sg-2xxxxxxxxxx"]

default_tags = {
    "CostCenter" = "1234"
}