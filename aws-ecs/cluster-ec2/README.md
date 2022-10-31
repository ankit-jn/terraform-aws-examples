# ARJ-Stack: Terraform AWS -> ECS Example: ECS Cluster with EC2 Instances managed via Auto Scalling Group

This Example configuration is a demonstration of [Module: Terraform AWS ECS](https://github.com/arjstack/terraform-aws-ecs) utilization to manage ECS Cluster based on AWS EC2 Instances (managed through ASG based capacity providers).


#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | ECS Cluster | `arjstack-dev` | AWS Fargate based cluster with container insights enabled |
| 2 | Capacity Provider | `ecs-arjstack-dev-cp-PRIMARY` | ASG `arjstack-asg-primary` based Capacity provider |
| 3 | Capacity Provider | `ecs-arjstack-dev-cp-SECONDARY` | ASG `arjstack-asg-secondary` based Capacity provider |
| 4 | Capacity Providers | `ecs-arjstack-dev-cp-PRIMARY` & `ecs-arjstack-dev-cp-SECONDARY` | Capacity Providers for ECS cluster |

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
