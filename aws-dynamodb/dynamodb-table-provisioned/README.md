## ARJ-Stack: Terraform AWS -> DynamoDB Table - `PROVISIONED` (Billing Mode) Example

This Example configuration is a demonstration of [Module: Terraform AWS - DynamoDB](https://github.com/ankit-jn/terraform-aws-dynamodb) utilization to provision DynamoDB table in `PROVISIONED` (Billing Mode).

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | DynamoDB Table | `arjstack-inventory` |  |
| 2 | Contributor Insights |  | For the table `arjstack-inventory` |
| 3 | Scaling Target for Read Capacity |  | Target- `table/arjstack-inventory`  |
| 4 | Target Tracking Scaling Policy | `DynamoDBReadCapacityUtilization:table/arjstack-inventory` | For table (`arjstack-inventory`) - Read Capacity  |
| 5 | Scaling Target for Write Capacity |  | Target- `table/arjstack-inventory`  |
| 6 | Target Tracking Scaling Policy | `DynamoDBWriteCapacityUtilization:table/arjstack-inventory` | For table (`arjstack-inventory`) - Write Capacity  |
| 7 | Scaling Target for Read Capacity |  | Target- `table/arjstack-inventory/index/GSI-1`  |
| 8 | Target Tracking Scaling Policy | `DynamoDBReadCapacityUtilization:table/arjstack-inventory/index/GSI-1` | For GSI Index (`GS-1`) - Read Capacity  |
| 9 | Scaling Target for Write Capacity |  | Target- `table/arjstack-inventory/index/GSI-1`  |
| 10 | Target Tracking Scaling Policy | `DynamoDBWriteCapacityUtilization:table/arjstack-inventory/index/GSI-1` | For GSI Index (`GS-1`) - Write Capacity  |

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