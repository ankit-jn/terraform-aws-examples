variable "policies" {
    default = [
                {
                    name = "arjstack-force-mfa"
                    description = "MFA Enforcement"
                    path = "/"
                    tags = {
                        "Name"      = "force-mfa"
                        "Purpose"   = "Security"
                    }
                },
                {
                    name = "arjstack-mfa-device-self-management"
                    description = "Allows MFA-authenticated IAM users to manage their own MFA device"
                    path = "/"
                    tags = {
                        "Name"      = "mfa-device-self-management"
                        "Purpose"   = "Security"
                    }
                },
                {
                    name = "arjstack-credential-report-management"
                    description = "Generate and retrieve IAM credential reports"
                    path = "/"
                    tags = {
                        "Name"      = "credential-report-management"
                        "Purpose"   = "Audit"
                    }
                }
            ]
}

variable "default_tags" {
    default = {
        "CostCenter" = "1234" 
    }
}
