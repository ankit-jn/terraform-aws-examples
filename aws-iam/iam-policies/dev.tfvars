policies = [
    {
        name = "arjstack-force-mfa"
        policy_file = "arjstack-force-mfa.json"
        description = "MFA Enforcement"
        path = "/"
        tags = {
            "Name"      = "force-mfa"
            "Purpose"   = "Security"
        }
    },
    {
        name = "arjstack-mfa-device-self-management"
        policy_file = "arjstack-mfa-device-self-management.json"
        description = "Allows MFA-authenticated IAM users to manage their own MFA device"
        path = "/"
        tags = {
            "Name"      = "mfa-device-self-management"
            "Purpose"   = "Security"
        }
    },
    {
        name = "arjstack-credential-report-management"
        policy_file = "arjstack-credential-report-management.json"
        description = "Generate and retrieve IAM credential reports"
        path = "/"
        tags = {
            "Name"      = "credential-report-management"
            "Purpose"   = "Audit"
        }
    }
]

default_tags = {
    "CostCenter" = "1234" 
}