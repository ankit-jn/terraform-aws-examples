## ARJ-Stack: Terraform AWS -> IAM Example: Manage IAM Resources in a single account

This Example configuration is a demonstration of [Module: Terraform AWS IAM](https://github.com/ankit-jn/terraform-aws-iam) utilization to manage IAM resources in a single AWS account.

#### Resources to be provisioned as an outcome of this example
---

#### IAM Policies

- All the Policy files should be stored in the `policies` folder at the root.
- TERRAFORM SPECIFIC: When one need to use AWS provided variable in the policy document like `${aws:username}`, one should always use it with an additional `$` sign. e.g. `"arn:aws:iam::*:mfa/$${aws:username}"`

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | IAM Policy: MFA Enforcement | `Policy-ForceMFA` | No Policy file is required as it is generated through code |
| 2 | IAM Policy | `arjstack-application-development` | Policy File: `/policies/arjstack-application-development.json` |
| 3 | IAM Policy | `arjstack-ci-cd-service-access` | Policy File: `/policies/arjstack-s3-readonly-access.json` |
| 4 | IAM Policy | `arjstack-s3-readonly-access` | Policy File: `/policies/arjstack-s3-readonly-access.json` |
| 5 | IAM Policy | `arjstack-support-access` | Policy File: `/policies/arjstack-support-access.json` |
| 6 | IAM Policy | `Developers-AssumeRolesPolicy` | Policy File: `/policies/Developers-AssumeRolesPolicy.json` |

#### IAM Roles - AWS Service Linked Roles

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | IAM Role | `ARJS3SupportRole` |  |
| 2 | Policy Attachment |  | Attachment of Custom Policy `arjstack-s3-readonly-access` with Role `ARJS3SupportRole` |
| 3 | Policy Attachment |  | Attachment of Inbuilt Policy `arn:aws:iam::aws:policy/AWSCloudTrail_ReadOnlyAccess` with Role `ARJS3SupportRole` |

#### IAM Roles - AWS Account trust Based Roles

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | IAM Role | `ARJCrossAccountDevOpsRole` |  |
| 2 | Policy Attachment |  | Attachment of Custom Policy `arjstack-ci-cd-service-access` with Role `ARJCrossAccountDevOpsRole` |
| 3 | Policy Attachment |  | Attachment of Custom Policy `arjstack-s3-readonly-access` with Role `ARJCrossAccountDevOpsRole` |
| 4 | Policy Attachment |  | Attachment of Inbuilt Policy `arn:aws:iam::aws:policy/AmazonDevOpsGuruReadOnlyAccess` with Role `ARJCrossAccountDevOpsRole` |
| 5 | IAM Role | `ARJCrossAccountSupportRole` |  |
| 6 | Policy Attachment |  | Attachment of Custom Policy `arjstack-support-access` with Role `ARJCrossAccountSupportRole` |

#### IAM Groups and Policy Attachment

- SSH public keys for Users (If `upload_ssh_key` is being set for user) should be stored in the `keys/ssh/` folder at the root with a format and the file name (with extension, if it is having) should be passed as a value to the property - `ssh_public_key_file`.
- PGP keys for Users (If `pgp_key` based login profile) should be stored in the `keys/pgp/` folder at the root with a format and the file name (with extension, if it is having) should be passed as a value to the property - `pgp_key_file`.

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | IAM Group | `Architects` |  |
| 2 | Policy Attachment |  | Inbuilt Policy `arn:aws:iam::aws:policy/AdministratorAccess` is attached  |
| 3 | IAM Group | `DevOpsEngineeres` |  |
| 4 | Policy Attachment |  | Custom Policy `arjstack-ci-cd-service-access` is attached  |
| 5 | Policy Attachment |  | Inbuilt Policy `arn:aws:iam::aws:policy/IAMReadOnlyAccess` is attached  |
| 6 | IAM Group | `Developers` |  |
| 7 | Policy Attachment |  | Custom Policy `arjstack-application-development` is attached  |
| 8 | Policy Attachment |  | Inbuilt Policy `arn:aws:iam::aws:policy/AWSSupportAccess` is attached  |
| 9 | Policy Attachment |  | Inbuilt Policy `arn:aws:iam::aws:policy/IAMReadOnlyAccess` is attached  |
| 10 | Policy Attachment |  | Assumable Role Policy `Developers-AssumeRolesPolicy` is attached  |

#### IAM Users, Login Profile, Access Keys, SSH Keys, MFA Policy Assignment and Group membership

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | IAM User | `Kate.Flamini` |  |
| 2 | IAM User | `Clayton.cameron` |  |
| 3 | IAM User | `James.Christensen` |  |
| 4 | IAM User | `Loic.Polymers` |  |
| 5 | IAM User: Login profile |  | Login profile for `Kate.Flamini` is created |
| 6 | IAM User: Login profile |  | Login profile for `Clayton.cameron` is created |
| 7 | IAM User: Login profile |  | Login profile for `James.Christensen` is created |
| 8 | IAM User: Login profile |  | Login profile for `Loic.Polymers` is created |
| 9 | IAM User: Access Keys |  | Access Keys for `Kate.Flamini` is created |
| 10 | IAM User: Access Keys |  | Access Keys for `James.Christensen` is created |
| 11 | IAM User: Access Keys |  | Access Keys for `Loic.Polymers` is created |
| 12 | IAM User: SSH Keys |  | SSH Keys for `Kate.Flamini` is created |
| 13 | IAM User: MFA Enforcement Policy Attachment |  | MFA Enforcement Policy `Policy-ForceMFA` is attached to User `Kate.Flamini` |
| 14 | IAM User: MFA Enforcement Policy Attachment |  | MFA Enforcement Policy `Policy-ForceMFA` is attached to User `Clayton.cameron` |
| 15 | IAM User: MFA Enforcement Policy Attachment |  | MFA Enforcement Policy `Policy-ForceMFA` is attached to User `James.Christensen` |
| 16 | IAM User: MFA Enforcement Policy Attachment |  | MFA Enforcement Policy `Policy-ForceMFA` is attached to User `Loic.Polymers` |
| 17 | IAM Group membership |  | `Kate.Flamini` is assigned to IAM Group `Architects`, `Developers`, `DevOpsEngineeres` |
| 18 | IAM Group membership |  | `Clayton.cameron` is assigned to IAM Group `DevOpsEngineeres`, `Developers` |
| 19 | IAM Group membership |  | `James.Christensen` is assigned to IAM Group `DevOpsEngineeres` |
| 20 | IAM Group membership |  | `Loic.Polymers` is assigned to IAM Group `Developers` |


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