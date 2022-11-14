name = "arjstack-one-zone-efs"

performance_mode = "maxIO"
throughput_mode = "provisioned"
provisioned_throughput_in_mibps = 1

encrypt_disk = true
create_kms_key = true

mount_targets = [
    {
        "subnet" = "subnet-1xxxxxxxxxxx"
    },
    {
        "subnet" = "subnet-2xxxxxxxxxxx"
    }
]

transition_to_ia = 90

attach_efs_policy = true
policy_file = "policy/efs-policy.json"
attach_policy_prevent_root_access = true
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