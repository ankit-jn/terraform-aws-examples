## replace the vpc id with actual ID
vpc_id = "vpc-xxxxxxxxx.."

sg_name = "arjstack-terraform"

ingress_rules = [
    {
        rule_name = "Self Ingress Rule"
        description = "Self Ingress Rule"
        from_port =0
        to_port = 0
        protocol = "-1"

        self = true
    },
    {
        rule_name = "Ingress from IPv4 CIDR"
        description = "IPv4 Rule"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        ## Replace IP with actual values
        cidr_blocks = ["XX.XX.XX.XX/XX", "YY.YY.YY.YY/YY"]
    },
    {
        rule_name = "Ingress from IPv6 CIDR"
        description = "IPv6 Rule"
        from_port = 441
        to_port = 443
        protocol = "tcp"
        ipv6_cidr_blocks = ["::/0"]
    },
    {
        rule_name = "Inress from Source SG [SG Name 1]"
        description = "Source SG Rule for [SG Name 1]"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        ## Replace SG ID with actual values
        source_security_group_id = "sg-xxxxxx......."
    },
    {
        rule_name = "Inress from Source SG [SG Name 2]"
        description = "Source SG Rule for [SG Name 2]"
        from_port = 443
        to_port = 443
        protocol = "tcp"

        source_security_group_id = "sg-yyyyyyyyy......."
    }
]

egress_rules = [
    {
        rule_name = "Self Egress Rule"
        description = "Self Egress Rule"
        from_port = 0
        to_port = 0
        protocol = "-1"

        self = true
    },
    {
        rule_name = "Egress to IPv4"
        description = "IPv4 Rule"
        from_port = 443
        to_port = 443
        protocol = "tcp"

        ## Replace IP with actual values
        cidr_blocks = ["XX.XX.XX.XX/XX", "YY.YY.YY.YY/YY"]
    },
    {
        rule_name = "Egress to Another IPv4"
        description = "Another IPv6 Rule"
        from_port = 443
        to_port = 443
        protocol = "tcp"

        ## Replace IP with actual values
        cidr_blocks = ["ZZ.ZZ.ZZ.ZZ/ZZ"]
    },
    {
        rule_name = "Egress to IPv6 CIDR"
        description = "IPv6 Rule"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        ipv6_cidr_blocks = ["::/0"]
    },
    {
        rule_name = "Egress to Source SG [SG Name 1]"
        description = "Source SG Rule for [SG Name 1]"
        from_port = 443
        to_port = 443
        protocol = "tcp"

        ## Replace SG ID with actual values
        source_security_group_id = "sg-xxxxx......"
    },
    {
        rule_name = "Egress to Source SG [SG Name 2]"
        description = "Source SG Rule for [SG Name 2]"
        from_port = 443
        to_port = 450
        protocol = "tcp"

        ## Replace SG ID with actual values
        source_security_group_id = "sg-yyyyyyyy....."
    }
]