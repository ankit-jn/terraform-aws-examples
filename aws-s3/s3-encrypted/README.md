## ARJ-Stack: Terraform AWS -> S3 Bucket (Encrypted via Amazon S3-managed keys (SSE-S3)) Example

This Example configuration is a demonstration of [Module: Terraform AWS Simple Storage Service (S3)](https://github.com/arjstack/terraform-aws-s3) utilization to create S3 bucket with versioning and SSE-S3 based encryption enabled


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
$ terraform plan --var-file=dev.tfvars
$ terraform apply --var-file=dev.tfvars
```

Note: Select the correct the AWS provider configurations in `provider.tf` file

### Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).