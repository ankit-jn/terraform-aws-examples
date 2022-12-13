variable "repository_name" {}
variable "default_tags" {}
variable "environment" {}

## DevOps IAM Roles/Policies
variable "create_codebuild_service_role" {}
variable "codebuild_service_role_name" {}
variable "codebuild_policies" {}

variable "create_codepipeline_service_role" {}
variable "codepipeline_service_role_name" {}
variable "codepipeline_policies" {}

## DevOps Bucket
variable "create_bucket" {}
variable "bucket_name" {}
variable "bucket_configs" {}

## CodeBuild Properties
variable "build_stages" {}
variable "encrypt_build_artifacts" {}
variable "codebuild_tags" {}

## CodePipeline Properties
variable "pipeline_name" {}
variable "pipeline_stages" {}
variable "encrypt_pipeline_artifacts" {}
variable "codepipeline_tags" {}

variable "notification_topic" {}
