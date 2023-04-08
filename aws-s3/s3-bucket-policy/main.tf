module "s3" {
    source = "git::https://github.com/ankit-jn/terraform-aws-s3"
    
    name = var.name
    
    enable_versioning = var.enable_versioning
    versioning = var.versioning

    bucket_public_access = var.bucket_public_access

    attach_bucket_policy = var.attach_bucket_policy
    attach_policy_deny_insecure_transport = var.attach_policy_deny_insecure_transport
    policy_content = data.aws_iam_policy_document.this.json

    default_tags = var.default_tags
}

data aws_iam_policy_document "this" {
    statement {
        effect = "Allow"

        actions = [
            "s3:PutObjectAcl"
        ]

        resources = [
            "arn:aws:s3:::${var.name}",
            "arn:aws:s3:::${var.name}/*"
        ]

        principals {
            type        = "*"
            identifiers = ["*"]
        }
    }
}