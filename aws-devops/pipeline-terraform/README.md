## ARJ-Stack: Terraform AWS -> AWS DevOps Example: CodePipeline for Terraform Managed Infrastructure Deployment

This Example configuration is a demonstration of [Module: Terraform AWS DevOps](https://github.com/arjstack/terraform-aws-devops) utilization to create Pipeline for Terraform managed Infrastructure deployment.

### How to use?
This project has the following components:

#### pipeline

This folder contains the Terraform code for provisioning CodePipeline and supporting resources via utilization of [Module: Terraform AWS DevOps](https://github.com/arjstack/terraform-aws-devops).

#### infrastructure

This folder contains the Terraform configurration files used in provisioning AWS resources as well as buildspecs yml files for CodeBuild.

- Please note all the files of this folder should be committed in the code commit repository `arjstack-infrastructure`.

### Prerquisites

| Resource | Name | Purpose |
|------|---------|---------|
| <a name="codecommit_repository"></a> [codecommit_repository](#requirement\_codecommit\_repository) | `"arjstack-infrastructure"` | CodeCommit Repository where the TF codebase will be stored to provision the AWS resources |
| <a name="sns_topic"></a> [sns_topic](#requirement\_sns\_topic) | `"arjstack-devops-notification"` | This SNS topic is used for notification in Appproval stage |
| <a name="sns_topic_subscription"></a> [sns_topic_subscription](#requirement\_sns\_topic\_subscription) |  | Subscription to SNS topic so that reviewer is notified (preferably Email based subscription) |


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
