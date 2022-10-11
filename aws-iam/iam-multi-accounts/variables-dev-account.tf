variable "dev_policies" {
    default = [
                {
                    name        = "arjstack-dev-application-development"
                    description = "Application Developement Access"
                    tags = {
                        "Name"  = "application-development"
                    }
                },
                {
                    name        = "arjstack-dev-ci-cd-service-access"
                    description = "AWS CI/CD Service Access"
                    tags = {
                        "Name"  = "ci-cd-service-access"
                    }
                },
                {
                    name        = "arjstack-dev-support-access"
                    description = "AWS Services read Only Access for support"
                    tags = {
                        "Name"  = "support-access"
                    }
                },
                {
                    name        = "arjstack-dev-s3-readonly-access"
                    description = "S3 read Only Access for support"
                    tags = {
                        "Name"  = "s3-readonly-access"
                    }
                }
            ]
}

variable "dev_trusted_account_roles" {
    default = [
                {
                    name = "ARJDEVAdministratorRole"
                    description = "ARJ DEV Account Administrator Role"
                    path = "/"
                    account_ids = [
                        # Replace xxxxxxxxxxxx with actual account ids
                        "xxxxxxxxxxxx",
                        "xxxxxxxxxxxx",
                    ]
                    policy_map = {
                        policy_arns = [
                            "arn:aws:iam::aws:policy/AdministratorAccess",
                        ] 
                    }
                    tags = {
                        # Replace xxxxxxxxxxxx with actual account id
                        "Name"      = "Trust Entity - AWS Account:xxxxxxxxxxxx"
                        "Purpose"   = "Cross Account Administrator"
                    }
                },
                {
                    name = "ARJDEVReaderRole"
                    description = "ARJ DEV Account ReadOnly Role"
                    path = "/"
                    account_ids = [
                        # Replace xxxxxxxxxxxx with actual account ids
                        "xxxxxxxxxxxx",
                        "xxxxxxxxxxxx",
                    ]
                    policy_map = {
                        policy_arns = [
                            "arn:aws:iam::aws:policy/ReadOnlyAccess",
                        ] 
                    }
                    tags = {
                        # Replace xxxxxxxxxxxx with actual account id
                        "Name"      = "Trust Entity - AWS Account:xxxxxxxxxxxx"
                        "Purpose"   = "Cross Account Reader"
                    }
                },
                {
                    name = "ARJDEVApplicationDevelopmentRole"
                    description = "ARJ Cross Account Support Role"
                    path = "/"
                    account_ids = [
                        # Replace xxxxxxxxxxxx with actual account ids
                        "xxxxxxxxxxxx",
                        "xxxxxxxxxxxx",
                    ]
                    policy_map = {
                        policy_names = [
                            "arjstack-dev-application-development"
                        ] 
                    } 
                    tags = {
                        # Replace xxxxxxxxxxxx with actual account id
                        "Name"      = "Trust Entity - AWS Account:xxxxxxxxxxxx"
                        "Purpose"   = "Support"
                    }
                },
                {
                    name = "ARJDEVSupportRole"
                    description = "ARJ Cross Account Support Role"
                    path = "/"
                    account_ids = [
                        # Replace xxxxxxxxxxxx with actual account ids
                        "xxxxxxxxxxxx",
                        "xxxxxxxxxxxx",
                    ]
                    policy_map = {
                        policy_names = [
                            "arjstack-dev-support-access"
                        ] 
                    } 
                    tags = {
                        # Replace xxxxxxxxxxxx with actual account id
                        "Name"      = "Trust Entity - AWS Account:xxxxxxxxxxxx"
                        "Purpose"   = "Support"
                    }
                },
                {
                    name = "ARJDEVDevOpsRole"
                    description = "ARJ Cross Account Devops Role"
                    path = "/"  
                    account_ids = [
                        # Replace xxxxxxxxxxxx with actual account ids
                        "xxxxxxxxxxxx",
                        "xxxxxxxxxxxx",
                    ]                
                    policy_map = {
                        policy_names = [
                            "arjstack-dev-ci-cd-service-access",
                            "arjstack-dev-s3-readonly-access"
                        ]
                        policy_arns = [
                            "arn:aws:iam::aws:policy/AmazonDevOpsGuruReadOnlyAccess",
                        ] 
                    }
                    tags = {
                        # Replace xxxxxxxxxxxx with actual account id
                        "Name"      = "Trust Entity - AWS Account:xxxxxxxxxxxx"
                        "Purpose"   = "DevOps"
                    }
                }
            ]
}

variable "dev_service_linked_roles" {
    default = [
                {
                    name = "ARJS3SupportRole"
                    description = "ARJ Cross Account Support Role"
                    path = "/"
                    service_names = [
                        "ecs.amazonaws.com",
                        "ec2.amazonaws.com"
                    ]
                    policy_map = {
                        policy_names = [
                            "arjstack-dev-s3-readonly-access"
                        ] 
                        policy_arns = [
                            "arn:aws:iam::aws:policy/AWSCloudTrail_ReadOnlyAccess",
                        ]
                    } 
                    tags = {
                        "Name"      = "Trusted Service - EC2 and ECS"
                        "Purpose"   = "Support"
                    }
                }
            ]
}

variable "dev_policy_default_tags" {
    default = {
        "CostCenter" = "DEV" 
        "PolicyKind" = "CustomPolicy" 
    }
}

variable "dev_role_default_tags" {
    default = {
        "CostCenter" = "DEV" 
        "RoleKind" = "CustomRole" 
    }
}