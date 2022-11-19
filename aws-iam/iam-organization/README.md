## ARJ-Stack: Terraform AWS -> IAM Example: AWS organization

This Example configuration is a demonstration of [Module: Terraform AWS IAM](https://github.com/arjstack/terraform-aws-iam) utilization to create AWS organization.

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Account Alias | `arjstack` |  |
| 2 | Organization |  | The AWS Organization |
| 3 | Organizational Units | `Infrastructure` | Root Level OU |
| 4 | Organizational Units | `SDLC` | Child OU of `Infrastructure` |
| 5 | Organizational Units | `MarketingQA` | Child OU of `SDLC` |
| 6 | Organizational Units | `Production` | Child OU of `Infrastructure` |
| 7 | Organizational Units | `ConsumerService` | Child OU of `Production` |
| 8 | Organizational Units | `Marketing` | Child OU of `Production` |
| 9 | Organizations Account | `arjstack_identity` | Member Account |
| 10 | Organizations Account | `arjstack_dev` | Member Account |
| 11 | Organizations Account | `arjstack_test` | Member Account |
| 12 | Organizational Policy | `scp-prevent-external-sharing` | `SERVICE_CONTROL_POLICY` |
| 13 | Policy Attachment | | Attachment of Policy `scp-prevent-external-sharing` to the Organization |

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