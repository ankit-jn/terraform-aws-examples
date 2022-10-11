variable "account_alias" {
    default = "arjstack"
}

variable "aws_service_access_principals" {
    default = [
                  "cloudtrail.amazonaws.com",
                  "config.amazonaws.com",
                  "account.amazonaws.com",
              ]
}

variable "enabled_policy_types" { 
    default = [
                "AISERVICES_OPT_OUT_POLICY",
                "SERVICE_CONTROL_POLICY",
                "TAG_POLICY"
              ]
}
variable "feature_set" {
    default = "ALL"
}
variable "organization_units" {
    default = [
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
}
variable "organizations_policies" {
      default = [
                  {
                      name = "scp-prevent-external-sharing"
                      description = "Prevent external sharing"
                      type = "SERVICE_CONTROL_POLICY"
                      tags = {
                          "Scope" =   "Security"
                      }
                  },
                ]
}
 
variable "organizations_accounts" {
    default = [
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
}

variable "default_tags" {
    default = {
        "ORG_Name" = "ARJ"
    }
}


