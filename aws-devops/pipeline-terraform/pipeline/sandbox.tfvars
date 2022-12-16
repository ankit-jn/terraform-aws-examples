repository_name = "arjstack-infrastructure"
environment = "sandbox"

default_tags = {
    "CostCenter" = "1234"
}

## DevOps IAM Roles/Policies
create_codebuild_service_role = true
codebuild_service_role_name = "codebuild-arjstack-infrastructure-sandbox"
codebuild_policies = [
    {
        "name" = "codebuild-arjstack-infrastructure-sandbox"
    }
]
create_codepipeline_service_role = true
codepipeline_service_role_name = "codepipeline-arjstack-infrastructure-sandbox"
codepipeline_policies=[
    {
        "name" = "codepipeline-arjstack-infrastructure-sandbox"
    }
]

## DevOps Bucket
create_bucket = true
bucket_name = "arjstack-devops"
bucket_configs = {
    enable_versioning = true
    enable_sse = true
    sse_kms = true
    use_kms_key = true
}

## CodeBuild Properties
build_stages= [
    {
        name = "TFPlan"

        source_type = "CODECOMMIT"
        source_buildspec = "buildspec-plan.yml"
        source_location = "https://git-codecommit.ap-south-1.amazonaws.com/v1/repos/arjstack-infrastructure"
        source_version = "main"

        artifacts_type = "S3"
        artifacts_location = "arjstack-devops"
        artifacts_name = "CodeBuild-infrastructure"
        
        env_image = "aws/codebuild/amazonlinux2-x86_64-standard:3.0"
        env_type = "LINUX_CONTAINER"
        env_privileged_mode = true
        env_compute_type = "BUILD_GENERAL1_SMALL"

        env_variables = [
            {
                name = "TF_VERSION"
                type = "PLAINTEXT"
                value = "1.2.5"
            },
            {
                name = "TF_STATE_FILE_BUCKET_REGION"
                type = "PLAINTEXT"
                value = "ap-south-1"
            },
            {
                name = "TF_STATE_FILE_BUCKET_NAME"
                type = "PLAINTEXT"
                value = "arjstack-devops"
            },
            {
                name = "TF_STATE_FILE_PATH"
                type = "PLAINTEXT"
                value = "terraform_arjstack_sandbox"
            },
            {
                name = "TF_EXECUTION_ROLE_ARN"
                type = "PLAINTEXT"
                value = "arn:aws:iam::112233445566:role/tf-execution-arjstack-infrastructure-sandbox"
            },
            {
                name = "TF_INPUT_VARS_FILE"
                type = "PLAINTEXT"
                value = "sandbox.tfvars"
            },
            {
                name = "TF_PLAN_NAME"
                type = "PLAINTEXT"
                value = "sandbox-infra"
            }
        ]
    },
    {
        name = "TFApply"

        source_type = "CODECOMMIT"
        source_buildspec = "buildspec-apply.yml"
        source_location = "https://git-codecommit.ap-south-1.amazonaws.com/v1/repos/arjstack-infrastructure"

        artifacts_type = "S3"
        artifacts_location = "arjstack-devops"
        artifacts_name = "CodeBuild-infrastructure"
        
        env_image = "aws/codebuild/amazonlinux2-x86_64-standard:3.0"
        env_type = "LINUX_CONTAINER"
        env_privileged_mode = true
        env_compute_type = "BUILD_GENERAL1_SMALL"

        env_variables = [
            {
                name = "TF_VERSION"
                type = "PLAINTEXT"
                value = "1.2.5"
            },
            {
                name = "TF_STATE_FILE_BUCKET_REGION"
                type = "PLAINTEXT"
                value = "ap-south-1"
            },
            {
                name = "TF_STATE_FILE_BUCKET_NAME"
                type = "PLAINTEXT"
                value = "arjstack-devops"
            },
            {
                name = "TF_STATE_FILE_PATH"
                type = "PLAINTEXT"
                value = "terraform_arjstack_sandbox"
            },
            {
                name = "TF_EXECUTION_ROLE_ARN"
                type = "PLAINTEXT"
                value = "arn:aws:iam::112233445566:role/tf-execution-arjstack-infrastructure-sandbox"
            },
            {
                name = "TF_PLAN_NAME"
                type = "PLAINTEXT"
                value = "sandbox-infra"
            }
        ]
    }
]
encrypt_build_artifacts = true
codebuild_tags = {
    "Purpose" = "CodeBuild"
}

## CodePipeline Properties
pipeline_name = "CodePipeline-Arjstack-Infrastructure"
pipeline_stages = [ 
    {
        name = "Source"
        actions = [
            {
                name = "PullSource"
                category = "Source"
                owner = "AWS"
                provider = "CodeCommit"
                version = "1"
                output_artifacts = ["SourceArtifact"]
                run_order = 1
                embed_configuration = true
                configuration = {
                    RepositoryName = "arjstack-infrastructure"
                    BranchName   = "main"
                }
            }
        ]
    },
    {
        name = "TerraformExecution"
        actions= [
            {
                name = "TerraformPlan"
                category = "Build"
                provider = "CodeBuild"
                version = "1"
                input_artifacts = ["SourceArtifact"]
                output_artifacts = ["TFPlan"]
                run_order = 1
                embed_configuration = true
                configuration = {
                    ProjectName = "TFPlan"
                }
            },
            {
                name = "DeploymentApproval"
                category = "Approval"
                provider = "Manual"
                version = "1"
                run_order = 2
                embed_configuration = true
                configuration = {
                    NotificationTopic = "arjstack-devops-notification"
                    CustomData    = "Do you approve the Plan to deploy the Infrastructure in Sandbox?"
                }
            },
            {
                name = "TerraformApply"
                category = "Build"
                provider = "CodeBuild"
                version = "1"
                input_artifacts = [
                    "SourceArtifact", 
                    "TFPlan"
                ]
                output_artifacts = ["TFApplyArtifact"]
                run_order = 3
                embed_configuration = true
                configuration = {
                    ProjectName = "Apply"
                    PrimarySource = "SourceArtifact"
                }
            }
        ]
    }
]

notification_topic = "arjstack-devops-notification"

encrypt_pipeline_artifacts = true
codepipeline_tags = {
    "Purpose" = "CodePipeline"
}