## ARJ-Stack: Terraform AWS -> AWS DevOps Example: CodePipeline for SAM Deployment

This Example configuration is a demonstration of [Module: Terraform AWS DevOps](https://github.com/arjstack/terraform-aws-devops) utilization to create This create Pipeline for Serverless Application Model deployment.

### How to use?
This project has the following components:

#### pipeline

This folder contains the Terraform code for provisioning CodePipeline and supporting resources via utilization of [Module: Terraform AWS DevOps](https://github.com/arjstack/terraform-aws-devops).

#### application

This folder contains the SAM template (`template.yml`) and Nested Cloudformation Templates used in provisioning AWS resources as well as `buildspec.yml` and corresponding json files for CodeBuild 

- Please note all the files of this folder should be committed in the code commit repository `arjstack-application`.

### Prerquisites

| Resource | Name | Purpose |
|------|---------|---------|
| <a name="codecommit_repository"></a> [codecommit_repository](#requirement\_codecommit\_repository) | `"arjstack-application"` | CodeCommit Repository where the CFN Templates will be stored to provision the AWS resources |
| <a name="sns_topic"></a> [sns_topic](#requirement\_sns\_topic) | `"arjstack-devops-notification"` | This SNS topic is used for notification in Appproval stage |
| <a name="sns_topic_subscription"></a> [sns_topic_subscription](#requirement\_sns\_topic\_subscription) |  | Subscription to SNS topic so that reviewer is notified (preferably Email based subscription) |


### Resources
---

The list of the resources to be provisioned as an outcome of the terraform configurations placed in `pipeline` folder.

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | CodeBuild Project | `arjstack-sam-application-sandbox-BuildSource` |  |
| 2 | CodePipleine | `CodePipeline-SAM-Application` |  |
| 3 | IAM Role for CodePipeline service to assume | `codepipeline-arjstack-sam-application-sandbox` |  |
| 4 | Policy to be attached to CodePipeline Assumable Role| `codepipeline-arjstack-sam-application-sandbox` |  |
| 5 | IAM Role/Policy attachment |  | Policy `codepipeline-arjstack-sam-application-sandbox` attachment to IAM Role `codepipeline-arjstack-sam-application-sandbox` |
| 6 | IAM Role for CodeBuild service to assume | `codebuild-arjstack-sam-application-sandbox` |  |
| 7 | Policy to be attached to CodeBuild Assumable Role| `codebuild-arjstack-sam-application-sandbox` |  |
| 8 | IAM Role/Policy attachment |  | Policy `codebuild-arjstack-sam-application-sandbox` attachment to IAM Role `codebuild-arjstack-sam-application-sandbox` |
| 9 | IAM Role for CloudFormation service to assume | `cloudformation-arjstack-sam-application-sandbox` |  |
| 10 | Policy to be attached to CloudFormation Assumable Role| `cloudformation-arjstack-sam-application-sandbox` |  |
| 11 | IAM Role/Policy attachment |  | Policy `cloudformation-arjstack-sam-application-sandbox` attachment to IAM Role `cloudformation-arjstack-sam-application-sandbox` |
| 12 | KMS Key |  | KMS Key for DevOps Artifacts encryption |
| 13 | KMS Key alias | `alias/arjstack-sam-application-sandbox-key` | Alias of KMS Key |
| 14 | S3 Bucket | `arjstack-devops` |  |
| 15 | S3 Bucket ACL |  | ACL for DevOps Bucket |
| 16 | S3 Bucket SSE |  | Server Side Encryption of the DevOps Bucket |
| 17 | S3 Bucket versioning |  | Enable versioning of DevOps Bucket |

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.22.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.22.0 |

### Usages

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan --var-file=sandbox.tfvars
$ terraform apply --var-file=sandbox.tfvars
```

Note: Select the correct the AWS provider configurations in `provider.tf` file

### Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).