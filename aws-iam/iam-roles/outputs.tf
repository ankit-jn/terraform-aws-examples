output "policies" {
    description = <<EOF
Map of all the IAM policies that are provisioned 
where each entry of the map is again a map of the policy attributes
EOF
    value = module.iam.policies
}

output "trusted_account_roles" {
    description = <<EOF
Map of AWS account trust based IAM Roles that are provisioned 
where each entry of the map is again a map of the Role attributes
EOF
    value = module.iam.trusted_account_roles
}

output "service_linked_roles" {
    description = <<EOF
Map of AWS Service linked IAM Roles that are provisioned 
where each entry of the map is again a map of the Role attributes
EOF
    value = module.iam.service_linked_roles
}
