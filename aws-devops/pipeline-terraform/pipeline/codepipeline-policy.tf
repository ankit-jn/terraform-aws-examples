data aws_iam_policy_document "codepipeline" {

    # CodeBuild Permissions
    statement {
        effect = "Allow"
        actions   = [
            "codebuild:StartBuild",
            "codebuild:BatchGetBuilds"
        ]
        resources = [
            "arn:aws:codebuild:${data.aws_region.current.id}:${data.aws_caller_identity.this.account_id}:project/${var.repository_name}-${var.environment}-TFPlan",
            "arn:aws:codebuild:${data.aws_region.current.id}:${data.aws_caller_identity.this.account_id}:build/${var.repository_name}-${var.environment}-TFPlan:*",
            "arn:aws:codebuild:${data.aws_region.current.id}:${data.aws_caller_identity.this.account_id}:project/${var.repository_name}-${var.environment}-TFApply",
            "arn:aws:codebuild:${data.aws_region.current.id}:${data.aws_caller_identity.this.account_id}:build/${var.repository_name}-${var.environment}-TFApply:*"
        ]
    }
    
    # S3 Permissions
    statement {
        effect = "Allow"
        actions   = [
            "s3:DeleteObject",
            "s3:GetBucketPolicy",
            "s3:GetObject",
            "s3:GetObjectVersion",
            "s3:ListBucket",
            "s3:PutObject"
        ]
        resources = [
            "arn:aws:s3:::${var.bucket_name}",
            "arn:aws:s3:::${var.bucket_name}/*"
        ]
    }

    # SNS Permissions
    statement {
        effect = "Allow"
        actions   = [
            "sns:Publish"
        ]
        resources = [
            "arn:aws:sns:${data.aws_region.current.id}:${data.aws_caller_identity.this.account_id}:${var.notification_topic}"
        ]
    }

    # CodeCommit Permissions
    statement {
        effect = "Allow"
        actions   = [
            "codecommit:BatchGetRepositories",
            "codecommit:Get*",
            "codecommit:GetBranch",
            "codecommit:GitPull",
            "codecommit:ListBranches",
            "codecommit:ListRepositories",
            "codecommit:UploadArchive"
        ]
        resources = [
            "arn:aws:codecommit:${data.aws_region.current.id}:${data.aws_caller_identity.this.account_id}:${var.repository_name}"
        ]
    }

    #KMS Permission
    statement {
        effect = "Allow"
        actions   = [
            "kms:*"
        ]
        resources = [
            module.encryption.key_arn
        ]
    }
}