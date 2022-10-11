variable "groups" {
    default =  [
                    {
                        name = "Architects" 
                        assumable_roles = [
                            # Please replace the AWS account id (the one where assumable role is created)
                           "arn:aws:iam::xxxxxxxxxxxx:role/ARJDEVAdministratorRole"
                        ]         
                    },
                    {
                        name = "Developers"
                        assumable_roles = [
                            # Please replace the AWS account id (the one where assumable role is created)
                           "arn:aws:iam::xxxxxxxxxxxx:role/ARJDEVReaderRole",
                           "arn:aws:iam::xxxxxxxxxxxx:role/ARJDEVApplicationDevelopmentRole",
                           "arn:aws:iam::xxxxxxxxxxxx:role/ARJDEVSupportRole",
                        ] 
                    },
                    {
                        name = "DevOpsEngineeres"
                        assumable_roles = [
                            # Please replace the AWS account id (the one where assumable role is created)
                            "arn:aws:iam::xxxxxxxxxxxx:role/ARJDEVReaderRole",
                            "arn:aws:iam::xxxxxxxxxxxx:role/ARJDEVDevOpsRole"
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