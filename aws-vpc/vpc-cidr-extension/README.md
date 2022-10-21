# ARJ-Stack: Terraform AWS -> VPC Example: VPC with additional CIDR
 
This Example Configuration is a demonstration of [Module: Terraform AWS VPC](https://github.com/arjstack/terraform-aws-vpc) utilization to create AWS VPC with 2 subnets from its primary CIDR having its own dedicated NACL and deciated route table along with additional seconday CIDR which is utilized to create 2 more Infra subnets.

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | VPC | `vpc-cidr-extension` | CIDR - 10.1.0.0/20 |
| 2 | VPC-Secondary CIDR |  | CIDR - 10.2.0.0/24 |
| 3 | Default Network ACL | `vpc-cidr-extension-nacl-default` |  |
| 4 | Default Route Table | `vpc-cidr-extension-rt-default` |  |
| 5 | Default Security Group | `vpc-cidr-extension-sg-default` |  |
| 6 | Internet Gateway | `vpc-cidr-extension-igw` |  |
| 7 | Subnet | `web-subnet-1` | CIDR - `10.1.0.0/23`<br>This is Public subnet in AZ `ap-south-1a` used for Front facing workload |
| 8 | Subnet | `web-subnet-2` | CIDR - `10.1.2.0/23`<br>This is Public subnet in AZ `ap-south-1b` used for Front facing workload |
| 9 | Subnet | `infra-subnet-1` | CIDR - `10.2.0.0/25`<br>This is Infrastructure subnet (From secondary VPC CIDR) in AZ `ap-south-1a` used for Infrastructure workload |
| 10 | Subnet | `infra-subnet-2` | CIDR - `10.2.0.128/25`<br>This is Infrastructure subnet (From secondary VPC CIDR) in AZ `ap-south-1b` used for Infrastructure workload |
| 11 | Route Table | `vpc-cidr-extension-rt-public` | This route table will be dedicated for Public Subnets (web-subnet-1, web-subnet-2) | 
| 12 | Route |  | Route to Destination (Internet-IPv4 traffic) via Internet Gateway `vpc-cidr-extension-igw` in Public Route Table `vpc-cidr-extension-rt-public` |
| 13 | Route Table | `vpc-cidr-extension-rt-infra` | This route table will be dedicated for Infrastructure Subnets (infra-subnet-1, infra-subnet-2) | 
| 14 | Route |  | Route to Destination (Internet-IPv4 traffic) via Internet Gateway `vpc-cidr-extension-igw` in Public Route Table `vpc-cidr-extension-rt-infra` |
| 25 | Network ACL | `vpc-cidr-extension-nacl-public` | This Network ACL will be applied on Public Subnets (web-subnet-1, web-subnet-2) |
| 16 | Network ACL Rule |  | Inbound Rule is created in NACL `vpc-cidr-extension-nacl-public` |
| 17 | Network ACL Rule |  | Outbound Rule is created in NACL `vpc-cidr-extension-nacl-public` |
| 18 | Network ACL | `vpc-cidr-extension-nacl-infra` | This Network ACL will be applied on Infrastructure Subnets (infra-subnet-1, infra-subnet-2) |
| 19 | Network ACL Rule |  | Inbound Rule is created in NACL `vpc-cidr-extension-nacl-infra` |
| 20 | Network ACL Rule |  | Outbound Rule is created in NACL `vpc-cidr-extension-nacl-infra` |
| 21 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Public Route Table `vpc-cidr-extension-rt-public` with Public Subnet `web-subnet-1` |
| 22 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Public Route Table `vpc-cidr-extension-rt-public` with Public Subnet `web-subnet-2` |
| 23 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Public Route Table `vpc-cidr-extension-rt-infra` with Public Subnet `infra-subnet-1` |
| 24 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Public Route Table `vpc-cidr-extension-rt-infra` with Public Subnet `infra-subnet-2` |


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
