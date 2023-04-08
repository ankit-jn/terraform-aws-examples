# DevOps Roles for CloudFormation
module "tf_execution" {
    source = "git::https://github.com/ankit-jn/terraform-aws-iam.git"
    
    policies = local.tf_execution_policy
    trusted_account_roles   = local.tf_execution_role_def
}

data aws_iam_policy_document "tf_execution" {

    # Define all the permissions to allow Terraform to deploy your resources
    statement {
        effect = "Allow"
        actions   = [
            "iam:*",
            "s3:*"
        ]
        resources = [
            "*"
        ]
    }
}