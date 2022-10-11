output "organization" {
    description = "Organization Attributes"
    value = module.iam_organization.organization
}

output "organizations_accounts" {
    description = <<EOF
Map of all the Organization accounts that are created as a member of the organization 
where each entry of the map is again a map of the Account attributes
EOF
    value = module.iam_organization.organizations_accounts
}

output "organizations_units" {
    description = <<EOF
Map of all the Organization Units that are created 
where each entry of the map is again a map of the OU attributes
EOF
    value = module.iam_organization.organizations_units
}