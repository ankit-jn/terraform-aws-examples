# ARJ-Stack: Terraform AWS -> Regional Amazon Aurora Mysql Example

This Example configuration is a demonstration of [Module: Terraform AWS Relational Database Service - Amazon Aurora](https://github.com/arjstack/terraform-aws-rds-aurora) utilization to create Regional Amazon Aurora MySQL RDS cluster with 3 DB instances

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
| 7 | Database Parameter Group | `rds-db-arjstack-pg` |  |
| 8 | RDS Cluster Parameter Group | `rds-cluster-arjstack-pg` |  |
| 9 | Cluster Custom Endpoint | `ep-analysis` |  |
| 10 | SSM Parameter | `/arjstack/inventory/host` |  |
| 11 | SSM Parameter | `/arjstack/inventory/dbname` |  |
| 12 | SSM Parameter | `/arjstack/inventory/password` |  |
| 13 | SSM Parameter | `/arjstack/inventory/username` |  |
| 14 | IAM Role | `rds-monitoring-role` | For enhanced RDS monitoring |
| 15 | Policy Attachment |  | `arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole` |
| 16 | Security Group | `arjstackdb-sg` |  |
| 17 | Security Group Rule |  | `Ingress` |
| 18 | Security Group Rule |  | `Egress` |

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
