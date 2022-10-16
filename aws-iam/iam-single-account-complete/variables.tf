variable "policies" {
    default = [
                {
                    name        = "arjstack-application-development"
                    description = "Application Developement Access"
                    tags = {
                        "Name"  = "application-development"
                    }
                },
                {
                    name        = "arjstack-ci-cd-service-access"
                    description = "AWS CI/CD Service Access"
                    tags = {
                        "Name"  = "ci-cd-service-access"
                    }
                },
                {
                    name        = "arjstack-support-access"
                    description = "AWS Services read Only Access for support"
                    tags = {
                        "Name"  = "support-access"
                    }
                },
                {
                    name        = "arjstack-s3-readonly-access"
                    description = "S3 read Only Access for support"
                    tags = {
                        "Name"  = "s3-readonly-access"
                    }
                },
                {
                    # Replace xxxxxxxxxxxx with actual account ids in 
                    # policy document #policies/Developers-AssumableRolePolicy.json
                    name        = "Developers-AssumableRolePolicy"
                    description = "Developers Assume Role Policy"
                    tags = {
                        "Name"  = "Developers-AssumableRolePolicy"
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
                        },
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

variable "groups" {
    default =  [
                    {
                        name = "Architects" 
                        policy_map = {
                            policy_arns = [
                                "arn:aws:iam::aws:policy/AdministratorAccess",
                            ] 
                        }          
                    },
                    {
                        name = "Developers"
                        policy_map = {
                            policy_names = [
                                "arjstack-application-development",
                                "Developers-AssumableRolePolicy"
                            ]
                            policy_arns = [
                                "arn:aws:iam::aws:policy/IAMReadOnlyAccess",
                                "arn:aws:iam::aws:policy/AWSSupportAccess"
                            ] 
                        }
                    },
                    {
                        name = "DevOpsEngineeres"
                        policy_map = {
                            policy_names = [
                                "arjstack-ci-cd-service-access"
                            ]
                            policy_arns = [
                                "arn:aws:iam::aws:policy/IAMReadOnlyAccess",
                            ] 
                        }
                    },
                ]
}

variable "users" {
    default =  [
                    {
                      name = "Kate.Flamini",
                      create_login_profile = "yes"
                      create_access_key = "yes"
                      force_destroy = "no"
                      upload_ssh_key = "yes"
                      ssh_public_key_file = "kate.flamini.pub"
                      groups = "Architects,Developers,DevOpsEngineeres"
                    },
                    {
                      name = "Clayton.cameron",
                      create_login_profile = "yes"
                      groups = "Developers,DevOpsEngineeres"
                    },
                    {
                      name = "James.Christensen",
                      create_login_profile = "yes"
                      create_access_key = "yes"
                      groups = "DevOpsEngineeres"
                    },
                    {
                      name = "Loic.Polymers",
                      create_login_profile = "yes"
                      create_access_key = "yes"
                      groups = "Developers"
                    },
                ]
}

variable "policy_default_tags" {
    default = {
        "CostCenter" = "1234" 
        "PolicyKind" = "CustomPolicy" 
    }
}

variable "role_default_tags" {
    default = {
        "CostCenter" = "1234" 
        "RoleKind" = "CustomRole" 
    }
}