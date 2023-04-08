## ARJ-Stack: Terraform AWS -> Neptune - Graph Database Cluster Example

This Example configuration is a demonstration of [Module: Terraform AWS Neptune Service](https://github.com/ankit-jn/terraform-aws-neptune) utilization to create Neptune - Graph Database cluster with 3 Neptune instances and custom endpoint

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Neptune Cluster | `arjstack-neptune-cluster` |  |
| 2 | Neptune Instance | `first` |  |
| 3 | Neptune Instance | `second` |  |
| 4 | Neptune Subnet Group | `arjstack-neptune-cluster-default` |  |
| 5 | Neptune Parameter Group | `neptune-arjstack-pg` |  |
| 6 | Neptune Cluster Parameter Group | `neptune-cluster-arjstack-pg` |  |
| 7 | Cluster Custom Endpoint | `ep-analysis` |  |
| 8 | Security Group | `arjstack-neptune-cluster-sg` |  |
| 9 | Security Group Rule |  | `Self Ingress` |
| 10 | Security Group Rule |  | `Ingress from Source SG-1xxxxxxx....` |
| 11 | Security Group Rule |  | `Self Egress` |

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