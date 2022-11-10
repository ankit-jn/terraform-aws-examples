account_alias = "arjstack"

aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "account.amazonaws.com",
]

enabled_policy_types = [
    "AISERVICES_OPT_OUT_POLICY",
    "SERVICE_CONTROL_POLICY",
    "TAG_POLICY"
]

feature_set = "ALL"

organization_units = [
    {
        name  = "Infrastructure",
    },
    {
        name      = "SDLC",
        parent    = "Infrastructure"
        tags      = {
        "Scope" = "Non-Production"
        }
    },
    {
        name      = "Production",
        parent    = "Infrastructure"
        tags      = {
        "Scope" = "Production"
        }
    },
    {
        name      = "MarketingQA",
        parent    = "SDLC"
    },
    {
        name      = "Marketing",
        parent    = "Production"
    },
    {
        name      = "ConsumerService",
        parent    = "Production"
    },
]

organizations_policies = [
    {
        name = "scp-prevent-external-sharing"
        policy_file = "org_policies/scp-prevent-external-sharing.json"
        description = "Prevent external sharing"
        type = "SERVICE_CONTROL_POLICY"
        tags = {
            "Scope" =   "Security"
        }
    },
]
 
organizations_accounts = [
    {
        name      = "arjstack_identity",
        email     = "xx@xxxxx.com",
        role_name = "owner"
        tags = {
            "Kind" = "Identity"
        }
    },
    {
        name      = "arjstack_dev",
        email     = "yy@xxxx.com",
        role_name = "owner"
        tags = {
            "Kind" = "Development"
        }
    },
    {
        name      = "arjstack_test",
        email     = "zz@xxxx.com",
        role_name = "owner"
        tags = {
            "Kind" = "Testing"
        }
    },
]

default_tags = {
    "ORG_Name" = "ARJ"
}