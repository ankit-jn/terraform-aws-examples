### Identity Account related outputs
output "force_mfa_policy_arn" {
    description = "ARN of the MFA enforcement policy"
    value       = module.iam_identity_account.force_mfa_policy_arn
}

output "identity_policies" {
    description = <<EOF
Map of all the IAM policies that are provisioned 
where each entry of the map is again a map of the policy attributes
EOF
    value = module.iam_identity_account.policies
}

output "groups" {
    value = module.iam_identity_account.groups
}

output "users" {
    value = module.iam_identity_account.users
}

### DEV Account related outputs

output "trusted_account_roles" {
    description = <<EOF
Map of AWS account trust based IAM Roles that are provisioned 
where each entry of the map is again a map of the Role attributes
EOF
    value = module.iam_dev_account.trusted_account_roles
}

output "service_linked_roles" {
    description = <<EOF
Map of AWS Service linked IAM Roles that are provisioned 
where each entry of the map is again a map of the Role attributes
EOF
    value = module.iam_dev_account.service_linked_roles
}

output "dev_policies" {
    description = <<EOF
Map of all the IAM policies that are provisioned 
where each entry of the map is again a map of the policy attributes
EOF
    value = module.iam_dev_account.policies
}

