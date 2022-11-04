# ARJ-Stack: Terraform AWS -> Global Amazon Aurora Mysql Cluster Example

This Example configuration is a demonstration of [Module: Terraform AWS Relational Database Service - Amazon Aurora](https://github.com/arjstack/terraform-aws-rds-aurora) utilization to create Global Amazon Aurora MySQL RDS cluster and Regional Amazon Aurora MySQL clusters (Primary and Secondary) with DB instance corresponding to its own regional cluster

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | RDS Global Aurora Cluster | `arjstackglobaldb` |  |
| 2 | RDS Aurora MySql Cluster | `arjstackdb` | `Primary Cluster` in region `ap-south-1` |
| 3 | RDS Aurora MySql Cluster | `arjstackdb` | `Secondary Cluster` in region `eu-central-1` |
| 4 | Random String |  | String of length `16` for `master_password` |
| 5 | DB Instance | `first` | For `Primary Cluster` in region `ap-south-1` |
| 6 | DB Instance | `first` | For `Secondary Cluster` in region `eu-central-1` |
| 7 | DB Subnet Group | `arjstack-db-subnet-group` | For `Primary Cluster` in region `ap-south-1` |
| 8 | DB Subnet Group | `arjstack-db-subnet-group` | For `Secondary Cluster` in region `eu-central-1` |
| 9 | Database Parameter Group | `aurora-db-arjstack-pg` | For `Primary Cluster` in region `ap-south-1` |
| 10 | Database Parameter Group | `aurora-db-arjstack-pg` | For `Secondary Cluster` in region `eu-central-1` |
| 11 | RDS Cluster Parameter Group | `aurora-cluster-arjstack-pg` | For `Primary Cluster` in region `ap-south-1` |
| 12 | RDS Cluster Parameter Group | `aurora-cluster-arjstack-pg` | For `Secondary Cluster` in region `eu-central-1` |
| 13 | Security Group | `arjstackdb-sg` | For `Primary Cluster` in region `ap-south-1` |
| 14 | Security Group Rule |  | `Self Ingress` |
| 15 | Security Group Rule |  | `Ingress from Source SG-1xxxxxxx....` |
| 16 | Security Group Rule |  | `Ingress from Source SG-2xxxxxxx....` |
| 17 | Security Group Rule |  | `Self Egress` |
| 18 | Security Group | `arjstackdb-sg` | For `Secondary Cluster` in region `eu-central-1` |
| 19 | Security Group Rule |  | `Self Ingress` |
| 20 | Security Group Rule |  | `Ingress from Source SG-3xxxxxxx....` |
| 21 | Security Group Rule |  | `Self Egress` |
| 22 | IAM Role | `rds-monitoring-role` | For enhanced RDS monitoring |
| 23 | Policy Attachment |  | `arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole` |
| 24 | SSM Parameter | `/arjstack/inventory/host` | For `Primary Cluster` in region `ap-south-1` |
| 25 | SSM Parameter | `/arjstack/inventory/host` | For `Secondary Cluster` in region `eu-central-1` |
| 26 | SSM Parameter | `/arjstack/inventory/dbname` | For `Primary Cluster` in region `ap-south-1` |
| 27 | SSM Parameter | `/arjstack/inventory/password` | For `Primary Cluster` in region `ap-south-1` |
| 28 | SSM Parameter | `/arjstack/inventory/username` | For `Primary Cluster` in region `ap-south-1` |


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
$ terraform plan --var-file=dev.tfvars
$ terraform apply --var-file=dev.tfvars
```

Note: Select the correct the AWS provider configurations in `provider.tf` file

## Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).
