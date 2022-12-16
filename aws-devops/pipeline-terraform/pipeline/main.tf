module "devops" {
    source = "git::https://github.com/arjstack/terraform-aws-devops.git?ref=v1.0.0"
    
    repository_name = var.repository_name
    environment     = var.environment
    default_tags    = var.default_tags

    ## DevOps IAM Roles/Policies
    policies = local.policies
    create_codebuild_service_role = var.create_codebuild_service_role
    codebuild_service_role_name = var.codebuild_service_role_name
    codebuild_policies = var.codebuild_policies
    create_codepipeline_service_role = var.create_codepipeline_service_role
    codepipeline_service_role_name = var.codepipeline_service_role_name
    codepipeline_policies = var.codepipeline_policies

    ## DevOps Bucket
    create_bucket = var.create_bucket
    bucket_name = var.bucket_name
    bucket_configs = var.bucket_configs

    ## CodeBuild Properties
    build_stages = var.build_stages
    encrypt_build_artifacts = var.encrypt_build_artifacts
    codebuild_tags    = var.codebuild_tags

    ## CodePipeline Properties
    pipeline_name = var.pipeline_name
    pipeline_stages = var.pipeline_stages
    encrypt_pipeline_artifacts = var.encrypt_pipeline_artifacts
    codepipeline_tags = var.codepipeline_tags

    # KMS COnfig
    kms_key = module.encryption.key_arn
    depends_on = [
        module.tf_execution
    ]    
}