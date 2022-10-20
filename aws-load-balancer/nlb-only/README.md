# ARJ-Stack: Terraform AWS -> Load Balancer Example: Internet Facing Network Load Balancer

This Example configuration is a demonstration of [Module: Terraform AWS Load Balancer](https://github.com/arjstack/terraform-aws-load-balancer) utilization to create Network Load Balancer along with Elastic IP Adresses to be used for its networking

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Network Load Balancer | `arjstack-nlb` |  |
| 2 | Elastic IP | `arjstack-nlb-eip-subnet-1xxxx..........` |  |
| 2 | Elastic IP | `arjstack-nlb-eip-subnet-2x.............` |  |

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

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-vpc/graphs/contributors).
