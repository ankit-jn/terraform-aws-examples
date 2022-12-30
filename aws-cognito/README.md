## ARJ-Stack: Terraform AWS -> Cognito Example

This Example configuration is a demonstration of [Module: Terraform AWS Cognito](https://github.com/arjstack/terraform-aws-cognito) utilization to provision Cognito User Pool and Cognito Identity Pool. 

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Cognito User Pool | `arjstack-user-pool` |  |
| 2 | Cognito User Pool Domain | `auth` |  |
| 3 | Cognito Resource Server | `arjstack` |  |
| 4 | Cognito Identity Provider | `Google` | IDP for User Pool |
| 5 | Cognito Identity Provider | `Facebook` | IDP for User Pool |
| 6 | Cognito Identity Provider | `LoginWithAmazon` | IDP for User Pool |
| 7 | Cognito Identity Provider | `OIDC` | IDP for User Pool |
| 8 | Cognito User Pool Client | `arjstack-test` |  |
| 9 | Cognito User Pool Client | `arjstack-api` |  |
| 10 | Cognito Identity Pool | `arjstack-identity-pool` |  |

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.27.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.27.0 |

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