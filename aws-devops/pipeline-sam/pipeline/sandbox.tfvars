repository_name = "arjstack-sam-application"
environment = "sandbox"

default_tags = {
    "CostCenter" = "1234"
}

## DevOps IAM Roles/Policies
create_codebuild_service_role = true
codebuild_service_role_name = "codebuild-arjstack-sam-application-sandbox"
codebuild_policies = [
    {
        "name" = "codebuild-arjstack-sam-application-sandbox"
    }
]
create_codepipeline_service_role = true
codepipeline_service_role_name = "codepipeline-arjstack-sam-application-sandbox"
codepipeline_policies=[
    {
        "name" = "codepipeline-arjstack-sam-application-sandbox"
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
        name = "BuildSource"

        source_type = "CODECOMMIT"
        source_buildspec = "buildspec.yml"
        source_location = "https://git-codecommit.ap-south-1.amazonaws.com/v1/repos/arjstack-sam-application"

        artifacts_type = "S3"
        artifacts_location = "arjstack-devops"
        artifacts_name = "CodeBuild-SAM-Application"
        
        env_image = "aws/codebuild/amazonlinux2-x86_64-standard:3.0"
        env_type = "LINUX_CONTAINER"
        env_privileged_mode = true
        env_compute_type = "BUILD_GENERAL1_SMALL"

        env_variables = [
            {
                name = "TEMPLATE_BUCKET"
                type = "PLAINTEXT"
                value = "arjstack-devops"
            },
            {
                name = "TEMPLATE_PREFIX"
                type = "PLAINTEXT"
                value = "application"
            }
        ]
    }
]
encrypt_build_artifacts = true
codebuild_tags = {
    "Purpose" = "CodeBuild"
}

## CodePipeline Properties
pipeline_name = "CodePipeline-SAM-Application"
pipeline_stages = [ 
    {
        name = "Source"
        actions = [
            {
                name = "Source"
                category = "Source"
                owner = "AWS"
                provider = "CodeCommit"
                version = "1"
                output_artifacts = ["SAMTemplateOutput"]
                run_order = 1
                embed_configuration = true
                configuration = {
                    RepositoryName = "arjstack-sam-application"
                    BranchName   = "main"
                }
            }
        ]
    },
    {
        name = "Sandbox"
        actions= [
            {
                name = "Build"
                category = "Build"
                provider = "CodeBuild"
                version = "1"
                input_artifacts = ["SAMTemplateOutput"]
                output_artifacts = ["SAMTemplateArtifact"]
                run_order = 1
                embed_configuration = true
                configuration = {
                    ProjectName = "BuildSource"
                }
            },
            {
                name = "CreateChangeSet"
                category = "Deploy"
                provider = "CloudFormation"
                version = "1"
                input_artifacts = ["SAMTemplateArtifact"]
                output_artifacts = ["CreatedChangeSet"]
                run_order = 2
                embed_configuration = true
                configuration = {
                    StackName       = "arjstack-sam-application-sandbox"
                    ActionMode      = "CHANGE_SET_REPLACE"
                    ChangeSetName   = "SandboxChangeSet"
                    RoleName        = "cloudformation-arjstack-sam-application-sandbox"
                    Capabilities    = "CAPABILITY_NAMED_IAM,CAPABILITY_AUTO_EXPAND"
                    TemplatePath    = "SAMTemplateArtifact::packaged-template.yml"
                    TemplateConfiguration = "SAMTemplateArtifact::config-dev.json"
                }
            },
            {
                name = "DeploymentApproval"
                category = "Approval"
                provider = "Manual"
                version = "1"
                run_order = 3
                embed_configuration = true
                configuration = {
                    NotificationTopic = "arjstack-devops-notification"
                    CustomData    = "Approve deployment in Sandbox."
                }
            },
            {
                name = "DeploySandbox"
                category = "Deploy"
                provider = "CloudFormation"
                version = "1"
                input_artifacts = ["CreatedChangeSet"]
                run_order = 4
                embed_configuration = true
                configuration = {
                    StackName       = "arjstack-sam-application-sandbox"                    
                    ActionMode      = "CHANGE_SET_EXECUTE"
                    RoleName        = "cloudformation-arjstack-sam-application-sandbox"
                    ChangeSetName   = "SandboxChangeSet"
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