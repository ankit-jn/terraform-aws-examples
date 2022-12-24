output "arn" {
    description = "Amazon Resource Name (ARN) identifying the Lambda Function."
    value       = module.lambda.arn
}

output "qualified_arn" {
    description = "ARN identifying the Lambda Function Version (if versioning is enabled via publish = true)."
    value       = module.lambda.qualified_arn
}

output "invoke_arn" {
    description = "ARN to be used for invoking Lambda Function from API Gateway."
    value       = module.lambda.invoke_arn
}

output "qualified_invoke_arn" {
    description = "Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway."
    value       = module.lambda.invoke_arn
}

output "signing_job_arn" {
    description = "ARN of the signing job."
    value       = module.lambda.signing_job_arn
}

output "signing_profile_version_arn" {
    description = "ARN of the signing profile version."
    value       = module.lambda.signing_profile_version_arn
}

output "version" {
    description = "Latest published version of the Lambda Function."
    value       = module.lambda.version
}

output "aliases_arn" {
    description = "Map of Lambda Function Alias ARNs."
    value = module.lambda.aliases_arn
}

output "aliases_invoke_arn" {
    description = "Map of Lambda Function Alias ARNs, used for invoking Lambda Function from API Gateway."
    value = module.lambda.aliases_invoke_arn
}

output "lambda_role_arn" {
    description = "Lambda Execution IAM Role."
    value = module.lambda.lambda_role_arn
}

output "function_url" {
    description = "The HTTP URL endpoint for the function in the format `https://<url_id>.lambda-url.<region>.on.aws`."
    value = module.lambda.function_url
}