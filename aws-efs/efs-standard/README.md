## ARJ-Stack: Terraform AWS -> EFS Example: Standard File System

This Example configuration is a demonstration of [Module: Terraform AWS ECS](https://github.com/ankit-jn/terraform-aws-ecs) utilization to provision Standard Elastic File System.


#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Elastic File System | `arjstack-one-zone-efs` | One Zone (`ap-south-1`) EFS  |
| 2 | EFS: File System Policy |  |  |
| 3 | EFS: Backup Policy |  |  |
| 4 | EFS: Mount Target |  | NFSv4 endpoint in Subnet `subnet-1xxxxxxxxxxx` |
| 4 | EFS: Mount Target |  | NFSv4 endpoint in Subnet `subnet-2xxxxxxxxxxx` |
| 5 | Security Group | `efs-arjstack-one-zone-efs-sg` | Security Group to be attached with Mount Targets |
| 6 | Security Group Ingress Rule |  | Self Egress Rule |
| 7 | Security Group Ingress Rule |  | Ingress from Source SG `sg-1xxxxxxxxxx` |
| 8 | Security Group Egress Rule |  | Self Egress Rule |
| 9 | KMS Key |  | KMS Key for EFS [arjstack-one-zone-efs] - Disk encryption |
| 10 | KMS Key Alias | `alias/arjstack-one-zone-efs-key` |  |

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