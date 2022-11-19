## ARJ-Stack: Terraform AWS -> Load Balancer Example: Internet Facing Application Load Balancer

This Example configuration is a demonstration of [Module: Terraform AWS Load Balancer](https://github.com/arjstack/terraform-aws-load-balancer) utilization to create Application Load Balancer along with Security Group and its Ingress/Egress Rules

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Application Load Balancer | `arjstack-alb` |  |
| 2 | Security Group | `arjstack-alb-sg` |  |
| 3 | Security Group Rule |  | Self Ingress Rule |
| 4 | Security Group Rule |  | Ingress Rule to allow traffic on port 80 from 0.0.0.0/0 |
| 5 | Security Group Rule |  | Self Egress Rule |

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