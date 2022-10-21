# ARJ-Stack: Terraform AWS -> ASG with Launch Temaplate

This Example configuration is a demonstration of [Module: Terraform AWS Auto Scaling Group](https://github.com/arjstack/terraform-aws-iam) utilization to create ASG with Launch Template as well as IAM Roles and IAM Policies. 

#### Resources to be provisioned as an outcome of this example
---

#### IAM Resources

- All the Policy files should be stored in the `policies` folder at the root.
- TERRAFORM SPECIFIC: When one need to use AWS provided variable in the policy document like `${aws:username}`, one should always use it with an additional `$` sign. e.g. `"arn:aws:iam::*:mfa/$${aws:username}"`

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | IAM Policy | `arjstack-application-development` | Policy File: `/policies/arjstack-application-development.json` |
| 2 | IAM Policy | `arjstack-s3-readonly-access` | Policy File: `/policies/arjstack-s3-readonly-access.json` |
| 3 | IAM Role [Service Linked Role]: Trust Entity - AWS Service `ec2.amazonaws.com` | `arjstack-asg-instance-profile-role` |  |
| 4 | Policy Attachment to Role | Attachment of Policy `arjstack-application-development` with Role `arjstack-asg-instance-profile-role` |  |
| 5 | Policy Attachment to Role | Attachment of Policy `arjstack-s3-readonly-access` with Role `arjstack-asg-instance-profile-role` |  |
| 6 | Policy Attachment to Role | Attachment of Policy `arn:aws:iam::aws:policy/AWSCloudTrail_ReadOnlyAccess` with Role `arjstack-asg-instance-profile-role` |  |
| 7 | Instance Profile | `arjstack-asg-instance-profile` | IAM Role `arjstack-asg-instance-profile` is used with this instance profile  |

#### Auto Scaling Resources

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Auto Scaling Group | `arjstack-asg` |  |
| 2 | Launch Template | `arjstack-asg-template` |  |

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
