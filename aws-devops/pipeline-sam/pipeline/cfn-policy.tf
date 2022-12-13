data aws_iam_policy_document "cfn" {

    # S3 Permissions
    statement {
        effect = "Allow"
        actions   = [
            "s3:GetObject",
            "s3:ListBucket"
        ]
        resources = [
            "arn:aws:s3:::${var.bucket_name}/*",
            "arn:aws:s3:::${var.bucket_name}"
        ]
    }

    # All Permissions
    statement {
        effect = "Allow"
        actions   = [
            "*"
        ]
        resources = [
            "*"
        ]
    }
}