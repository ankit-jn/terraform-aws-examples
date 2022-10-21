# ARJ-Stack: Terraform AWS -> Roles Management along with Policy to be assigned

This Example configuration is a demonstration of [Module: Terraform AWS IAM](https://github.com/arjstack/terraform-aws-iam) utilization to manage IAM roles.


#### Resources to be provisioned as an outcome of this example
---

#### IAM Policies

- All the Policy files should be stored in the `policies` folder at the root.
- TERRAFORM SPECIFIC: When one need to use AWS provided variable in the policy document like `${aws:username}`, one should always use it with an additional `$` sign. e.g. `"arn:aws:iam::*:mfa/$${aws:username}"`

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | IAM Policy | `arjstack-ci-cd-service-access` | Policy File: `/policies/arjstack-ci-cd-service-access.json` |
| 2 | IAM Policy | `arjstack-s3-readonly-access` | Policy File: `/policies/arjstack-s3-readonly-access.json` |
| 3 | IAM Policy | `arjstack-support-access` | Policy File: `/policies/arjstack-support-access.json` |

#### IAM Roles, and Policy attachment

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | IAM Role [Service Linked Roles]: Trust Entity - AWS Services | `ARJS3SupportRole` |  |
| 2 | IAM Role [trusted Account Roles]: Trust Entity - AWS Accounts | `ARJCrossAccountDevOpsRole` |  |
| 3 | IAM Role [Trusted Account Roles]: Trust Entity - AWS Accounts | `ARJCrossAccountSupportRole` |  |
| 4 | Policy Attachment to Role | Attachment of Policy `arjstack-s3-readonly-access` with Role `ARJS3SupportRole` |  |
| 5 | Policy Attachment to Role | Attachment of Policy `arn:aws:iam::aws:policy/AWSCloudTrail_ReadOnlyAccess` with Role `ARJS3SupportRole` |  |
| 6 | Policy Attachment to Role | Attachment of Policy `arjstack-ci-cd-service-access` with Role `ARJCrossAccountDevOpsRole` |  |
| 7 | Policy Attachment to Role | Attachment of Policy `arjstack-s3-readonly-access` with Role `ARJCrossAccountDevOpsRole` |  |
| 8 | Policy Attachment to Role | Attachment of Policy `arn:aws:iam::aws:policy/AmazonDevOpsGuruReadOnlyAccess` with Role `ARJCrossAccountDevOpsRole` |  |
| 9 | Policy Attachment to Role | Attachment of Policy `arjstack-support-access` with Role `ARJCrossAccountSupportRole` |  |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.22.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.22.0 |

## Usages

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note: Select the correct the AWS provider configurations in `provider.tf` file

## Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).
