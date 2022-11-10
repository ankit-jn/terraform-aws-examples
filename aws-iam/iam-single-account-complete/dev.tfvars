policies = [
    {
        name        = "arjstack-application-development"
        policy_file = "policies/arjstack-application-development.json"
        description = "Application Developement Access"
        tags = {
            "Name"  = "application-development"
        }
    },
    {
        name        = "arjstack-ci-cd-service-access"
        policy_file = "policies/arjstack-ci-cd-service-access.json"
        description = "AWS CI/CD Service Access"
        tags = {
            "Name"  = "ci-cd-service-access"
        }
    },
    {
        name        = "arjstack-support-access"
        policy_file = "policies/arjstack-support-access.json"
        description = "AWS Services read Only Access for support"
        tags = {
            "Name"  = "support-access"
        }
    },
    {
        name        = "arjstack-s3-readonly-access"
        policy_file = "policies/arjstack-s3-readonly-access.json"
        description = "S3 read Only Access for support"
        tags = {
            "Name"  = "s3-readonly-access"
        }
    },
    {
        # Replace xxxxxxxxxxxx with actual account ids in 
        # policy document #policies/Developers-AssumableRolePolicy.json
        name        = "Developers-AssumableRolePolicy"
        policy_file = "policies/Developers-AssumableRolePolicy.json"
        description = "Developers Assume Role Policy"
        tags = {
            "Name"  = "Developers-AssumableRolePolicy"
        }
    }
]

trusted_account_roles = [
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

service_linked_roles = [
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

groups =  [
    {
        name = "Architects" 
        policy_list = [
            {
                "name"  = "AdministratorAccess"
                "arn"   = "arn:aws:iam::aws:policy/AdministratorAccess"
            }
        ]    
    },
    {
        name = "Developers"
        policy_list = [
            {
                "name" = "arjstack-application-development"
            },
            {
                "name" = "Developers-AssumableRolePolicy"
            },
            {
                "name"  = "IAMReadOnlyAccess"
                "arn"   = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
            },
            {
                "name"  = "AWSSupportAccess"
                "arn"   = "arn:aws:iam::aws:policy/AWSSupportAccess"
            }
        ]
    },
    {
        name = "DevOpsEngineeres"
        policy_list = [
            {
                "name" = "arjstack-ci-cd-service-access"
            },
            {
                "name"  = "IAMReadOnlyAccess"
                "arn"   = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
            }
        ]
    },
]

users =  [
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

policy_default_tags = {
    "CostCenter" = "1234" 
    "PolicyKind" = "CustomPolicy" 
}

role_default_tags = {
    "CostCenter" = "1234" 
    "RoleKind" = "CustomRole" 
}