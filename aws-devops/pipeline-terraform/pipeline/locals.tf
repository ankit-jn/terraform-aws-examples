locals {
    policies = [
        {
            name = "codebuild-${var.repository_name}-${var.environment}"
            policy_content = data.aws_iam_policy_document.codebuild.json
            description = "CodeBuild Access"
            path = "/"
            tags = {
                "Name"      = "codebuild-${var.repository_name}-${var.environment}"
                "Purpose"   = "CodeBuild Access"
            }
        },
        {
            name = "codepipeline-${var.repository_name}-${var.environment}"
            policy_content = data.aws_iam_policy_document.codepipeline.json
            description = "CodePipeline Access"
            path = "/"
            tags = {
                "Name"      = "codepipeline-${var.repository_name}-${var.environment}"
                "Purpose"   = "CodePipeline Access"
            }
        }
    ]

    tf_execution_policy = [
        {
            name = "tf-execution-${var.repository_name}-${var.environment}"
            policy_content = data.aws_iam_policy_document.tf_execution.json
            description = "Terraform Deployment Access"
            path = "/"
            tags = {
                "Name"      = "cloudformation-${var.repository_name}-${var.environment}"
                "Purpose"   = "Terraform Deployment Access"
            }
        }
    ]
    tf_execution_role_name = "tf-execution-${var.repository_name}-${var.environment}"
    tf_execution_role_def =  [                
                        {
                            name = local.tf_execution_role_name
                            description = "IAM Role with trusted Entity - Current Account"
                            account_ids = [
                                data.aws_caller_identity.this.account_id
                            ]
                            policy_list =  local.tf_execution_policy            
                        }
                    ]
}