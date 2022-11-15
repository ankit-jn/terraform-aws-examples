# ARJ-Stack: Terraform AWS -> Same Region VPC Peering

This Example configuration is a demonstration of [Module: Terraform AWS VPC Peering](https://github.com/arjstack/terraform-aws-vpc-peering) utilization to create VPC Peering between 2 VPCs from the same region `ap-south-1`. Based of provider alias config, VPC could be in same account or in multiple acconts.

- Handling for both side `Owner` and `Peer`

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | AWS VPC Peering Connection |  |  |
| 2 | AWS VPC Peering Connection Accepter |  |  |
| 3 | VPC Peering Connection Option for Requester (Owner) |  |  |
| 4 | VPC Peering Connection Option for Accepter (Peer) |  |  |
| 5 | Routes in Router Tables at Owner side |  | 4 Route Table-CIDRs combination hence 4 routes |
| 6 | Routes in Router Tables at Peer side |  | 4 Route Table-CIDRs combination hence 4 routes |


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
