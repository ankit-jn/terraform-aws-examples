output "bucket_arn" {
    description = "DevOps Bucket ARN"
    value = module.devops.bucket_arn
}

output "codebuild_service_role" {
    description = "ARN of IAM Role for CodeBuild Service"
    value = module.devops.codebuild_service_role
}

output "codepipeline_service_role" {
    description = "ARN of IAM Role for CodePipeline Service"
    value = module.devops.codepipeline_service_role
}

output "codecommit_repository" {
    description = "CodeCommit Repository Attributes"
    value = module.devops.codecommit_repository
}

output "codebuild_projects" {
    description = "CodeBuild Project Attributes"
    value = module.devops.codebuild_projects
}

output "codepipeline" {
    description = "CodePipeline Attributes"
    value = module.devops.codepipeline
}

output "ssm_parameter_webhook_secret" {
    description = "SSM parameter where webhook secret is stored."
    value = module.devops.ssm_parameter_webhook_secret
}

output "kms_key" {
    description = "KMS customer master key (CMK) to be used for encryption."
    value = {
                "key_id" = module.encryption.key_id
                "arn"    = module.encryption.key_arn 
                "policy" = module.encryption.key_policy 
            }
}