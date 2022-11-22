## ARJ-Stack: Terraform AWS -> Amazon Timestream Database and Tables with encryption via CMK and Error Logging

This Example configuration is a demonstration of [Module: Terraform AWS - Amazon Timestream](https://github.com/arjstack/terraform-aws-timestream) utilization to provision Timestream Database (encrypted via Customer managed KMS key) along with tables and error logging to S3.

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Timestream Database | `arjstack-timestream` |  |
| 2 | Timestream Table | `inventory` | Database - `arjstack-timestream` |
| 3 | Timestream Table | `invoice` | Database - `arjstack-timestream` |
| 4 | Customer Managed KMS Key |  | To encrypt the data stored in database. |
| 5 | KMS Key alias | `alias/arjstack-timestream-key` |  |

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
