# ARJ-Stack: Terraform AWS -> Serverless Amazon Managed Streaming for Apache Kafka (MSK) Example

This Example configuration is a demonstration of [Module: Terraform Serverless Amazon Managed Streaming for Apache Kafka (MSK)](https://github.com/arjstack/terraform-aws-msk-serverless) utilization to create Serverless Amazon Managed Streaming for Apache Kafka (MSK) 

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Serverless MSK | `arjstack-msk-serverless` |  |
| 2 | Security Group | `arjstack-msk-serverless-sg` |  |
| 3 | Security Group Rule |  | `Self Ingress` |
| 4 | Security Group Rule |  | `Self Egress` |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.27.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.27.0 |

## Usages

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan --var-file=dev.tfvars
$ terraform apply --var-file=dev.tfvars
```

Note: Select the correct the AWS provider configurations in `provider.tf` file

## Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).
