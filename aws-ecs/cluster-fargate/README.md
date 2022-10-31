# ARJ-Stack: Terraform AWS -> ECS Example: ECS Cluster with AWS Fargate

This Example configuration is a demonstration of [Module: Terraform AWS ECS](https://github.com/arjstack/terraform-aws-ecs) utilization to manage AWS Fargate ECS Cluster.


#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | ECS Cluster | `arjstack-dev` | AWS Fargate based cluster with container insights enabled |
| 2 | Capacity Providers | `FARGATE` & `FARGATE_SPOT` | The Fargate capacity providers are attached with cluster |

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