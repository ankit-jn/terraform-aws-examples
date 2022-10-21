variable "policies" {
    default = [
                {
                    name        = "arjstack-ci-cd-service-access"
                    policy_file = "arjstack-ci-cd-service-access"
                    description = "AWS CI/CD Service Access"
                    tags = {
                        "Name"  = "ci-cd-service-access"
                    }
                },
                {
                    name        = "arjstack-support-access"
                    policy_file = "arjstack-support-access"
                    description = "AWS Services read Only Access for support"
                    tags = {
                        "Name"  = "support-access"
                    }
                },
                {
                    name        = "arjstack-s3-readonly-access"
                    policy_file = "arjstack-s3-readonly-access"
                    description = "S3 read Only Access for support"
                    tags = {
                        "Name"  = "s3-readonly-access"
                    }
                }
            ]
}

variable "trusted_account_roles" {
    default = [
                {
                    name = "ARJCrossAccountSupportRole"
                    description = "ARJ Cross Account Support Role"
                    path = "/"
                    account_ids = [
                        # Replace xxxxxxxxxxxx with actual account ids
                        "xxxxxxxxxxxx",
                        "xxxxxxxxxxxx",
                    ]
                    policy_list = [
                        {
                            "name" = "arjstack-support-access"
                        }
                    ]
                    tags = {
                        # Replace xxxxxxxxxxxx with actual account id
                        "Name"      = "Trust Entity - AWS Account:xxxxxxxxxxxx"
                        "Purpose"   = "Support"
                    }
                },
                {
                    name = "ARJCrossAccountDevOpsRole"
                    description = "ARJ Cross Account Devops Role"
                    path = "/"  
                    account_ids = [
                        # Replace xxxxxxxxxxxx with actual account ids
                        "xxxxxxxxxxxx",
                        "xxxxxxxxxxxx",
                    ]
                    policy_list = [
                        {
                            "name" = "arjstack-ci-cd-service-access"
                        },
                        {
                            "name" = "arjstack-s3-readonly-access"
                        },
                        {
                            "name"  = "AmazonDevOpsGuruReadOnlyAccess"
                            "arn"   = "arn:aws:iam::aws:policy/AmazonDevOpsGuruReadOnlyAccess"
                        }
                    ]
                    tags = {
                        # Replace xxxxxxxxxxxx with actual account id
                        "Name"      = "Trust Entity - AWS Account:xxxxxxxxxxxx"
                        "Purpose"   = "DevOps"
                    }
                }
            ]
}

variable "service_linked_roles" {
    default = [
                {
                    name = "ARJS3SupportRole"
                    description = "ARJ Cross Account Support Role"
                    path = "/"
                    service_names = [
                        "ecs.amazonaws.com",
                        "ec2.amazonaws.com"
                    ]
                    policy_list = [
                        {
                            "name" = "arjstack-s3-readonly-access"
                        },
                        {
                            "name"  = "AWSCloudTrail_ReadOnlyAccess"
                            "arn"   = "arn:aws:iam::aws:policy/AWSCloudTrail_ReadOnlyAccess"
                        }
                    ]
                    tags = {
                        "Name"      = "Trusted Service - EC2 and ECS"
                        "Purpose"   = "Support"
                    }
                }
            ]
}

variable "default_tags" {
    default = {
        "CostCenter" = "1234" 
    }
}