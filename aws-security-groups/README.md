## ARJ-Stack: Terraform AWS -> IAM Example: IAM Security Group

This Example configuration is a demonstration of [Module: Terraform AWS IAM](https://github.com/ankit-jn/terraform-aws-iam) utilization to create a Security Group and Ingress/Egress rules.

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
 1 | Security Group | `arjstack-terraform` |  |
 2 | Security Group Rule |  | Self Ingress Rule |
 3 | Security Group Rule |  | Ingress Rules for Source IPv4 CIDRs |
 4 | Security Group Rule |  | Ingress Rules for source from IPv6 CIDRs |
 5 | Security Group Rule |  | Ingress Rule for Source from Other SGs  |
 6 | Security Group Rule |  | Self Egress Rule |
 7 | Security Group Rule |  | Egress Rules for Destination to IPv4 CIDRs |
 8 | Security Group Rule |  | Egress Rules for Destination to IPv6 CIDRs |
 9 | Security Group Rule |  | Egress Rule for Destination to Other SGs  |
 
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

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/ankit-jn/terraform-aws-examples/graphs/contributors).