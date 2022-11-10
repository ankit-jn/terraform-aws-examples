identity_policies = [
    {
        # Replace xxxxxxxxxxxx with actual account ids in 
        name        = "Architects-AssumableRolePolicy"
        policy_file = "policies/Architects-AssumableRolePolicy.json"
        description = "Architects Assume Role Policy"
        tags = {
            "Name"  = "Architects-AssumableRolePolicy"
        }
    },
    {
        # Replace xxxxxxxxxxxx with actual account ids in 
        name        = "Developers-AssumableRolePolicy"
        policy_file = "policies/Developers-AssumableRolePolicy.json"
        description = "Developers Assume Role Policy"
        tags = {
            "Name"  = "Developers-AssumableRolePolicy"
        }
    },
    {
        # Replace xxxxxxxxxxxx with actual account ids in 
        name        = "DevOpsEngineers-AssumableRolePolicy"
        policy_file = "policies/DevOpsEngineers-AssumableRolePolicy.json"
        description = "DevOpsEngineers Assume Role Policy"
        tags = {
            "Name"  = "DevOpsEngineers-AssumableRolePolicy"
        }
    }
]

groups = [
    {
        name = "Architects"  
        policy_list = [
            {
                "name"  = "Architects-AssumableRolePolicy"
            },
        ]      
    },
    {
        name = "Developers"
        policy_list = [
            {
                "name"  = "Developers-AssumableRolePolicy"
            },
        ]
    },
    {
        name = "DevOpsEngineeres"
        policy_list = [
            {
                "name"  = "DevOpsEngineers-AssumableRolePolicy"
            },
        ]
    },
]

users= [
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

dev_policies = [
    {
        name        = "arjstack-dev-application-development"
        policy_file = "policies/arjstack-dev-application-development.json"
        description = "Application Developement Access"
        tags = {
            "Name"  = "application-development"
        }
    },
    {
        name        = "arjstack-dev-ci-cd-service-access"
        policy_file = "policies/arjstack-dev-ci-cd-service-access.json"
        description = "AWS CI/CD Service Access"
        tags = {
            "Name"  = "ci-cd-service-access"
        }
    },
    {
        name        = "arjstack-dev-support-access"
        policy_file = "policies/arjstack-dev-support-access.json"
        description = "AWS Services read Only Access for support"
        tags = {
            "Name"  = "support-access"
        }
    },
    {
        name        = "arjstack-dev-s3-readonly-access"
        policy_file = "policies/arjstack-dev-s3-readonly-access.json"
        description = "S3 read Only Access for support"
        tags = {
            "Name"  = "s3-readonly-access"
        }
    }
]

dev_trusted_account_roles = [
    {
        name = "ARJDEVAdministratorRole"
        description = "ARJ DEV Account Administrator Role"
        path = "/"
        account_ids = [
            # Replace xxxxxxxxxxxx with actual account ids
            "xxxxxxxxxxxx",
            "xxxxxxxxxxxx",
        ]
        policy_list = [
            {
                "name"  = "AdministratorAccess"
                "arn"   = "arn:aws:iam::aws:policy/AdministratorAccess"
            },
        ] 
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
        policy_list = [
            {
                "name"  = "ReadOnlyAccess"
                "arn"   = "arn:aws:iam::aws:policy/ReadOnlyAccess"
            },
        ]
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
        policy_list = [
            {
                "name" = "arjstack-dev-application-development"
            },
        ]
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
        policy_list = [
            {
                "name" = "arjstack-dev-support-access"
            },
        ] 
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
        policy_list = [
            {
                "name" = "arjstack-dev-ci-cd-service-access"
            },
            {
                "name" = "arjstack-dev-s3-readonly-access"
            },
            {
                "name"  = "AmazonDevOpsGuruReadOnlyAccess"
                "arn"   = "arn:aws:iam::aws:policy/AmazonDevOpsGuruReadOnlyAccess"             
            },
        ]
        tags = {
            # Replace xxxxxxxxxxxx with actual account id
            "Name"      = "Trust Entity - AWS Account:xxxxxxxxxxxx"
            "Purpose"   = "DevOps"
        }
    }
]

dev_service_linked_roles = [
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
                "name" = "arjstack-dev-s3-readonly-access"
            },
            {
                "name"  = "arjstack-support-access"
                "arn"   =  "arn:aws:iam::aws:policy/AWSCloudTrail_ReadOnlyAccess"
            }
        ]
        tags = {
            "Name"      = "Trusted Service - EC2 and ECS"
            "Purpose"   = "Support"
        }
    }
]

dev_policy_default_tags = {
    "CostCenter" = "DEV" 
    "PolicyKind" = "CustomPolicy" 
}

dev_role_default_tags = {
    "CostCenter" = "DEV" 
    "RoleKind" = "CustomRole" 
}