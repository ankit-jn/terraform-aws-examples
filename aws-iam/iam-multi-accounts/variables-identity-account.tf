variable "identity_policies" {
    default = [
                {
                    # Replace xxxxxxxxxxxx with actual account ids in 
                    # policy document #policies/Architects-AssumableRolePolicy.json
                    name        = "Architects-AssumableRolePolicy"
                    description = "Architects Assume Role Policy"
                    tags = {
                        "Name"  = "Architects-AssumableRolePolicy"
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
                },
                {
                    # Replace xxxxxxxxxxxx with actual account ids in 
                    # policy document #policies/DevOpsEngineers-AssumableRolePolicy.json
                    name        = "DevOpsEngineers-AssumableRolePolicy"
                    description = "DevOpsEngineers Assume Role Policy"
                    tags = {
                        "Name"  = "DevOpsEngineers-AssumableRolePolicy"
                    }
                }
            ]
}

variable "groups" {
    default =  [
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