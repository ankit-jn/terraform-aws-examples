# ARJ-Stack: Terraform AWS -> IAM Example: IAM Group and IAM Users

This Example configuration is a demonstration of [Module: Terraform AWS IAM](https://github.com/arjstack/terraform-aws-iam) utilization to create a IAM Groups and IAM Users.

#### Resources to be provisioned as an outcome of this example
---

- SSH public keys for Users (If `upload_ssh_key` is being set for user) should be stored in the `keys/ssh/` folder at the root with a format and the file name (with extension, if it is having) should be passed as a value to the property - `ssh_public_key_file`.
- PGP keys for Users (If `pgp_key` based login profile) should be stored in the `keys/pgp/` folder at the root with a format and the file name (with extension, if it is having) should be passed as a value to the property - `pgp_key_file`.

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | IAM Group | `Architects` |  |
| 2 | IAM Group | `Managers` |  |
| 3 | IAM Group | `Developers` |  |
| 4 | IAM group | `Testers` |  |
| 5 | IAM User | `Kate.Flamini` |  |
| 6 | IAM User | `Clayton.cameron` |  |
| 7 | IAM User | `James.Christensen` |  |
| 8 | IAM User | `Loic.Polymers` |  |
| 9 | IAM User: Login profile |  | Login profile for `Kate.Flamini` is created |
| 10 | IAM User: Login profile |  | Login profile for `Clayton.cameron` is created |
| 11 | IAM User: Login profile |  | Login profile for `James.Christensen` is created |
| 12 | IAM User: Login profile |  | Login profile for `Loic.Polymers` is created |
| 13 | IAM User: Access Keys |  | Access Keys for `Kate.Flamini` is created |
| 14 | IAM User: Access Keys |  | Access Keys for `James.Christensen` is created |
| 15 | IAM User: Access Keys |  | Access Keys for `Loic.Polymers` is created |
| 16 | IAM User: SSH Keys |  | SSH Keys for `Kate.Flamini` is created |
| 17 | IAM Group membership |  | `Kate.Flamini` is assigned to IAm Group `Architects`, `Managers`, `Developers` |
| 18 | IAM Group membership |  | `Clayton.cameron` is assigned to IAm Group `Managers`, `Developers` |
| 19 | IAM Group membership |  | `James.Christensen` is assigned to IAm Group `Managers`, `Testers` |
| 20 | IAM Group membership |  | `Loic.Polymers` is assigned to IAm Group `Developers` |

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
$ terraform plan --var-file=dev.tfvars
$ terraform apply --var-file=dev.tfvars
```

Note: Select the correct the AWS provider configurations in `provider.tf` file

## Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).
