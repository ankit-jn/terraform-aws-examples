## Provision KMS Key for 
## 1. encryption of CodeBuild Output artifacts and 
## 2. CodeBuild Bucket (if created as part of the provisioning)
## 3. CodePipeline Bucket (if created as part of the provisioning)
module "encryption" {
    source = "git::https://github.com/ankit-jn/terraform-aws-kms.git"

    account_id = data.aws_caller_identity.this.account_id

    description = format("KMS Key for DevOps Artifacts encryption")

    key_spec    = "SYMMETRIC_DEFAULT"
    key_usage   = "ENCRYPT_DECRYPT"

    aliases =  [format("%s-%s-key", var.repository_name, var.environment)]

    key_administrators = [data.aws_caller_identity.this.arn]
    key_grants_users = [data.aws_caller_identity.this.arn]
    key_users = [data.aws_caller_identity.this.arn]

    policy = data.template_file.kms_access_policy.rendered

    tags = merge({ "RepositoryName" = var.repository_name },
                    { "Environment" = var.environment },
                    var.default_tags)
}

## KMS key Policy for giving access to Timestream service
data template_file "kms_access_policy" {
    template = file("${path.module}/kms-policy.json")

    vars = {
      aws_account = data.aws_caller_identity.this.account_id
      aws_region  = data.aws_region.current.id
    }
}