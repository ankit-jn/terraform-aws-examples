output "policies" {
    description = <<EOF
Map of all the IAM policies that are provisioned 
where each entry of the map is again a map of the policy attributes
EOF
    value = module.iam.policies
}
