## ARJ-Stack: Terraform AWS -> Python based Lambda Function Example

This Example configuration is a demonstration of [Module: Terraform AWS - Lambda](https://github.com/arjstack/terraform-aws-lambda) utilization to provision Lambda function.

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Lambda Function | `arjstack-greetings` | Lambda Function |
| 2 | Lambda Function Alias | `demo` | Alias of the Lambda Fuunction `arjstack_greetings` |
| 3 | Function URL |  | Symmetric Key for the use to generate and verify Mac |
| 4 | Lambda Function Execution Role | `arjstack-greetings-role` | Alias of the KSM key |
| 5 | IAM Policy | `lambda_policy` | Symmetric Key for the use to generate and verify Mac |
| 6 | Policy Attachment |  | Alias of the KSM key |

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