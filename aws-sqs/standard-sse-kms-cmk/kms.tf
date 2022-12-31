data aws_caller_identity "this" {}
data "aws_region" "current" {}

module "kms" {
    source = "git::https://github.com/arjstack/terraform-aws-kms.git?ref=v1.0.0"

    account_id = data.aws_caller_identity.this.account_id

    description = format("KMS Key for SQS Queue Mesaage encryption")

    key_spec    = "SYMMETRIC_DEFAULT"
    key_usage   = "ENCRYPT_DECRYPT"

    aliases =  [format("%s-key", var.name)]

    key_administrators = [data.aws_caller_identity.this.arn]
    key_grants_users = [data.aws_caller_identity.this.arn]
    key_users = [data.aws_caller_identity.this.arn]

    policy = data.template_file.kms_access_policy.rendered

    tags = merge({ "SQSQueueName" = var.name },
                    var.tags)
}

## KMS key Policy for giving access to SQS service
data template_file "kms_access_policy" {
    template = file("${path.module}/kms-policy.json")

    vars = {
      aws_account = data.aws_caller_identity.this.account_id
      aws_region  = data.aws_region.current.id
    }
}