output "id" {
    description = "The identifier for the distribution."
    value       = module.cloudfront.id
}

output "arn" {
    description = "The ARN (Amazon Resource Name) for the distribution."
    value       = module.cloudfront.arn
}

output "status" {
    description = "The current status of the distribution."
    value       = module.cloudfront.status
}

output "domain_name" {
    description = "The domain name corresponding to the distribution."
    value       = module.cloudfront.domain_name
}

output "hosted_zone_id" {
    description = "The CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to."
    value       = module.cloudfront.hosted_zone_id
}

## Policies

#### Cache Policy
output "cache_policies" {
    description = "The Map of attributes for Cache Policies."
    value       = module.cloudfront.cache_policies
}

#### Origin Request Policy
output "origin_request_policies" {
    description = "The Map of attributes for Origin Request Policies."
    value       = module.cloudfront.origin_request_policies
}

#### Response Headers Policy
output "response_headers_policies" {
    description = "The Map of attributes for Response Headers Policies."
    value       = module.cloudfront.response_headers_policies
}

## Cloudfront Functions
output "functions" {
    description = "The Map of attributes for Cloudfront Function."
    value       = module.cloudfront.functions
}

## Telemetry
output "monitoring_subscription_id" {
    description = "The ID of the CloudFront monitoring subscription."
    value       = module.cloudfront.id
}

#### Realtime Log Configurations
output "realtime_log_configs" {
    description = "The map of Attributes for Realtime Log Configurations."
    value       = module.cloudfront.realtime_log_configs
}

output "log_configuration_role" {
    description = "The ARN of an IAM role that CloudFront can use to send real-time log data to the Kinesis data stream."
    value       = module.cloudfront.log_configuration_role
}

## Security

### Origin Access Identity
output "oai_etag" {
    description = "Current version of the origin access identity's information."
    value       = module.cloudfront.oai_etag
}

output "oai_iam_arn" {
    description = "Pre-generated ARN for use in S3 bucket policies."
    value       = module.cloudfront.oai_iam_arn
}

output "oai_path" {
    description = "A shortcut to the full path for the origin access identity to use in CloudFront."
    value       = module.cloudfront.oai_path
}

## Key Management

### Public Keys
output "public_keys" {
    description = "The Map of attributes for Public Keys."
    value       = module.cloudfront.public_keys
}

### Key Groups
output "key_groups" {
    description = "The Map of attributes for Key Groups."
    value       = module.cloudfront.key_groups
}
