data aws_iam_policy_document "codebuild" {

    # CodeBuild Permissions
    statement {
        effect = "Allow"
        actions   = [
            "codecommit:BatchGetRepositories",
            "codecommit:Get*",
            "codecommit:GitPull",
            "codecommit:ListBranches",
            "codecommit:ListRepositories"
        ]
        resources = [
            "arn:aws:codecommit:${data.aws_region.current.id}:${data.aws_caller_identity.this.account_id}:${var.repository_name}"
        ]
    }
    
    # Cloudwatch Log Group Permissions
    statement {
        effect = "Allow"
        actions   = [
            "logs:CreateLogGroup",
            "logs:CreateLogStream",
            "logs:PutLogEvents"
        ]
        resources = [
            "arn:aws:logs:${data.aws_region.current.id}:${data.aws_caller_identity.this.account_id}:log-group:/aws/codebuild/*"
        ]
    }

    # S3 Permissions
    statement {
        effect = "Allow"
        actions   = [
            "s3:GetObject",
            "s3:GetObjectVersion",
            "s3:ListBucket",
            "s3:PutObject"
        ]
        resources = [
            "arn:aws:s3:::${var.bucket_name}/*",
            "arn:aws:s3:::${var.bucket_name}"
        ]
    }

    # KMS Permissions
    statement {
        effect = "Allow"
        actions   = [
            "kms:*"
        ]
        resources = [
            module.encryption.key_arn
        ]
    }

    # KMS Permissions
    statement {
        effect = "Allow"
        actions   = [
            "sts:AssumeRole"
        ]
        resources = [
            module.tf_execution.trusted_account_roles[local.tf_execution_role_name].arn
        ]
    }
}