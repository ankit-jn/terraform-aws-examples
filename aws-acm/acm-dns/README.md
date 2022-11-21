## ARJ-Stack: Terraform AWS -> Certificate with DNS based Validation

This Example configuration is a demonstration of [Module: Terraform AWS Certification Manager (ACM)](https://github.com/arjstack/terraform-aws-acm) utilization to request Certificate from ACM with DNS based validation.

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Certificate |  | Certificate for the domain [`arjstack.in`, `academics.arjstack.in`] |
| 2 | Certificate Validation |  | Email based validation  |
| 3 | Route53 Record |  | Record for the domain `arjstack.in` |
| 4 | Route53 Record |  | Record for the domain `academics.arjstack.in`  |

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