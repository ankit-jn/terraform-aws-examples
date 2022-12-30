## ARJ-Stack: Terraform AWS -> Secret

This Example configuration is a demonstration of [Module: Terraform AWS Secret Manager](https://github.com/arjstack/terraform-aws-secret-manager) utilization to create secret with no configuration for secret rotation.


#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Secret | `arjstack-credentials` | Certificate for the domain [`arjstack.in`, `academics.arjstack.in`] |
| 2 | Secret Version | `AWSCURRENT` | Secret Values  |
| 3 | Secret Policy |  | Policy for who all can access secret manager |

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