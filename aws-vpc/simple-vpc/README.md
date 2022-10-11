# ARJ-Stack: Terraform AWS -> VPC Example: Simple VPC

This Example Configuration is a demonstration of [Module: Terraform AWS VPC](https://github.com/arjstack/terraform-aws-vpc) utilization to create a Simple AWS VPC with 1 public subnet having its own dedicated NACL and deciated Route Table.

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | VPC | `simple-vpc` | CIDR - 10.0.0.0/24 |
| 2 | Default Network ACL | `simple-vpc-nacl-default` |  |
| 3 | Default Route Table | `simple-vpc-rt-default` |  |
| 4 | Default Security Group | `simple-vpc-sg-default` |  |
| 5 | Internet Gateway | `simple-vpc-igw` |  |
| 6 | Subnet | `public-subnet` | CIDR - `10.0.0.0/25`. This is Public Subnet |
| 7 | Route Table | `simple-vpc-rt-public` | This route table will be dedicated for Public Subnets | 
| 8 | Route |  | Route to Destination (Internet, 0.0.0.0/0) via Internet Gateway (`simple-vpc-igw`) in Public Route Table `simple-vpc-rt-public` |
| 9 | Network ACL | `simple-vpc-nacl-public` | This Network ACL will be applied on Public Subnets |
| 10 | Network ACL Rule |  | Inbound Rule is created in NACL `simple-vpc-nacl-public` |
| 11 | Network ACL Rule |  | Outbound Rule is created in NACL `simple-vpc-nacl-public` |
| 12 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Public Route Table (`simple-vpc-rt-public`) with Public Subnet (`public-subnet`) |

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
