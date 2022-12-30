output "user_pool_id" {
    description = "ID of the User Pool."
    value = module.cognito_user_pool.user_pool_id
}

output "user_pool_arn" {
    description = "ARN of the User Pool."
    value = module.cognito_user_pool.user_pool_arn
}

output "user_pool_endpoint" {
    description = "Endpoint name of the user pool."
    value = module.cognito_user_pool.user_pool_endpoint
}

output "user_pool_domain" {
    description = "Holds the domain prefix if the user pool has a domain associated with it."
    value = module.cognito_user_pool.user_pool_domain
}

output "user_pool_custom_domain" {
    description = "A custom domain name that is provided to Amazon Cognito."
    value = module.cognito_user_pool.user_pool_custom_domain
}

output "user_pool_domain_aws_account_id" {
    description = "The AWS account ID for the user pool owner."
    value       = module.cognito_user_pool.user_pool_domain_aws_account_id
}

output "user_pool_domain_cdn_arn" {
    description = "The URL of the CloudFront distribution."
    value       = module.cognito_user_pool.user_pool_domain_cdn_arn
}

output "user_pool_domain_s3_bucket" {
    description = "The S3 bucket where the static files for this domain are stored."
    value       = module.cognito_user_pool.user_pool_domain_s3_bucket
}

output "user_pool_domain_app_version" {
    description = "The app version."
    value       = module.cognito_user_pool.user_pool_domain_app_version
}

output "user_pool_app_client_ids" {
    description = "The map of App client IDs"
    value       = module.cognito_user_pool.user_pool_app_client_ids
}

output "identity_pool_id" {
    description = "ID of the Identity Pool."
    value = module.cognito_identity_pool.identity_pool_id
}

output "identity_pool_arn" {
    description = "ARN of the Identity Pool."
    value = module.cognito_identity_pool.identity_pool_arn
}
