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

    cfn_policy = [
        {
            name = "cloudformation-${var.repository_name}-${var.environment}"
            policy_content = data.aws_iam_policy_document.cfn.json
            description = "Cloudformation Access"
            path = "/"
            tags = {
                "Name"      = "cloudformation-${var.repository_name}-${var.environment}"
                "Purpose"   = "Cloudformation Access"
            }
        }
    ]
    cfn_role_name = "cloudformation-${var.repository_name}-${var.environment}"
    cfn_role_def =  [                
                        {
                            name = local.cfn_role_name
                            description = "IAM Role with trusted Entity - AWS CloudFormation Service"
                            service_names = [
                                "cloudformation.amazonaws.com"
                            ]
                            policy_list =  local.cfn_policy            
                        }
                    ]
}