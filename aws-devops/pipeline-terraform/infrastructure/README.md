## ARJ-Stack: Terraform AWS - IAM: Policy Management Example

This Example configuration is a demonstration of [Module: Terraform AWS IAM](https://github.com/arjstack/terraform-aws-iam) utilization to manage IAM policies.

#### Resources to be provisioned as an outcome of this example
---

- All the Policy files should be stored in the `policies` folder at the root.
- TERRAFORM SPECIFIC: When one need to use AWS provided variable in the policy document like `${aws:username}`, one should always use it with an additional `$` sign. e.g. `"arn:aws:iam::*:mfa/$${aws:username}"`


| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | IAM Policy | `arjstack-credential-report-management` | Policy File: `/policies/arjstack-credential-report-management.json` |
| 2 | IAM Policy | `arjstack-force-mfa` | Policy File: `arjstack-force-mfa.json` |
| 3 | IAM Policy | `arjstack-mfa-device-self-management` | Policy File: `arjstack-mfa-device-self-management.json` |

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