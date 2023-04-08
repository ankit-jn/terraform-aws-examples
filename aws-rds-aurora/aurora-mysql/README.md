## ARJ-Stack: Terraform AWS -> Regional Amazon Aurora Mysql Example

This Example configuration is a demonstration of [Module: Terraform AWS Relational Database Service - Amazon Aurora](https://github.com/ankit-jn/terraform-aws-rds-aurora) utilization to create Regional Amazon Aurora MySQL RDS cluster with 3 DB instances and custom endpoint

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | RDS Aurora MySql Cluster | `arjstackdb` |  |
| 2 | Random String |  | String of length `16` for `master_password` |
| 3 | DB Instance | `first` |  |
| 4 | DB Instance | `second` |  |
| 5 | DB Instance | `third` |  |
| 6 | DB Subnet Group | `arjstackdb-default` |  |
| 7 | Database Parameter Group | `aurora-db-arjstack-pg` |  |
| 8 | RDS Cluster Parameter Group | `aurora-cluster-arjstack-pg` |  |
| 9 | Cluster Custom Endpoint | `ep-analysis` |  |
| 10 | Security Group | `arjstackdb-sg` |  |
| 11 | Security Group Rule |  | `Self Ingress` |
| 12 | Security Group Rule |  | `Ingress from Source SG-1xxxxxxx....` |
| 13 | Security Group Rule |  | `Self Egress` |
| 14 | IAM Role | `rds-monitoring-role` | For enhanced RDS monitoring |
| 15 | Policy Attachment |  | `arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole` |
| 16 | SSM Parameter | `/arjstack/inventory/host` |  |
| 17 | SSM Parameter | `/arjstack/inventory/dbname` |  |
| 18 | SSM Parameter | `/arjstack/inventory/password` |  |
| 19 | SSM Parameter | `/arjstack/inventory/username` |  |

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