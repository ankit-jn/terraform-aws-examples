# ARJ-Stack: Terraform AWS -> VPC Example: Enhanced VPC

This Example configuration is a demonstration of [Module: Terraform AWS VPC](https://github.com/arjstack/terraform-aws-vpc) utilization to create a Enhanced AWS VPC with the following features:
 - Attachment of additonal CIDR with VPC
 - Multiple subnets (For the different wrokloads) from both CIDR (primary as well as secondary CIDR)
    - Public Subnets (Public)
    - Infra subnets (Public; utilizing VPC secondary CIDR)
    - Application Subnets (Private)
    - Database subnets (Private)
 - Dedicated NACL for each subnet
 - Dedicated Route table for each subnet type (i.e. 4 Route tables)
 - Internet Gateway as well as Egress Only Internet Gateway
 - Well Managed tagging on resources
 - Defalt VPC resources
 - etc...

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | VPC | `enhanced-vpc` | CIDR - 10.1.0.0/20 |
| 2 | VPC-Secondary CIDR |  | CIDR - 10.2.0.0/24 |
| 3 | Default Network ACL | `enhanced-vpc-nacl-default` |  |
| 4 | Default Route Table | `enhanced-vpc-rt-default` |  |
| 5 | Default Security Group | `enhanced-vpc-sg-default` |  |
| 6 | Internet Gateway | `enhanced-vpc-igw` |  |
| 7 | Egress Only Internet Gateway | `enhanced-vpc-egress-igw` |  |
| 8 | Subnet | `web-subnet-1` | CIDR - `10.1.0.0/23`<br>This is Public subnet in AZ `ap-south-1a` used for Front facing workload |
| 9 | Subnet | `web-subnet-2` | CIDR - `10.1.2.0/23`<br>This is Public subnet in AZ `ap-south-1b` used for Front facing workload |
| 10 | Subnet | `infra-subnet-1` | CIDR - `10.2.0.0/25`, From Secondary CIDR<br>This is Infrastructure subnet in AZ `ap-south-1a` used for Infrastructure workload |
| 11 | Subnet | `infra-subnet-2` | CIDR - `10.2.0.128/25`, From Secondary CIDR<br>This is Infrastructure subnet in AZ `ap-south-1b` used for Infrastructure workload |
| 12 | Subnet | `application-subnet-1` | CIDR - `10.1.4.0/22`<br>This is Application subnet in AZ `ap-south-1a` used for Application layer workload (Private) |
| 13 | Subnet | `application-subnet-2` | CIDR - `10.1.8.0/22`<br>This is Application subnet in AZ `ap-south-1b` used for Application layer workload (Private) |
| 14 | Subnet | `db-subnet-1` | CIDR - `10.1.12.0/23`<br>This is DB subnet in AZ `ap-south-1a` used for Database workload (Private) |
| 15 | Subnet | `db-subnet-2` | CIDR - `10.1.14.0/23`<br>This is DB subnet in AZ `ap-south-1b` used for Database workload (Private) |
| 16 | Route Table | `enhanced-vpc-rt-public` | This route table will be dedicated for Public Subnets (web-subnet-1, web-subnet-2) | 
| 17 | Route |  | Route to Destination (Internet-IPv4 traffic) via Internet Gateway `enhanced-vpc-igw` in Public Route Table `enhanced-vpc-rt-public` |
| 18 | Route |  | Route to Destination (Internet-IPv6 traffic) via Egress Only Internet Gateway `enhanced-vpc-egress-igw` in Public Route Table `enhanced-vpc-rt-public` |
| 19 | Route Table | `enhanced-vpc-rt-infra` | This route table will be dedicated for Infrastructure Subnets (infra-subnet-1, infra-subnet-2) | 
| 20 | Route |  | Route to Destination (Internet-IPv4 traffic) via Internet Gateway `enhanced-vpc-igw` in Public Route Table `enhanced-vpc-rt-infra` |
| 21 | Route |  | Route to Destination (Internet-IPv6 traffic) via Egress Only Internet Gateway `enhanced-vpc-egress-igw` in Public Infrastructure Table `enhanced-vpc-rt-infra` |
| 22 | Route Table | `enhanced-vpc-rt-application` | This route table will be dedicated for Application Subnets (application-subnet-1, application-subnet-2) | 
| 23 | Route Table | `enhanced-vpc-rt-database` | This route table will be dedicated for Database Subnets (db-subnet-1, db-subnet-2)| 
| 24 | Network ACL | `enhanced-vpc-nacl-public` | This Network ACL will be applied on Public Subnets (web-subnet-1, web-subnet-2) |
| 25 | Network ACL Rule |  | Inbound Rule is created in NACL `enhanced-vpc-nacl-public` |
| 26 | Network ACL Rule |  | Outbound Rule is created in NACL `enhanced-vpc-nacl-public` |
| 27 | Network ACL | `enhanced-vpc-nacl-infra` | This Network ACL will be applied on Infrastructure Subnets (infra-subnet-1, infra-subnet-2)  |
| 28 | Network ACL Rule |  | Inbound Rule is created in NACL `enhanced-vpc-nacl-infra` |
| 29 | Network ACL Rule |  | Outbound Rule is created in NACL `enhanced-vpc-nacl-infra` |
| 30 | Network ACL | `enhanced-vpc-nacl-application` | This Network ACL will be applied on Application Subnets (application-subnet-1, application-subnet-2)  |
| 31 | Network ACL Rule |  | Inbound Rule is created in NACL `enhanced-vpc-nacl-application` |
| 32 | Network ACL Rule |  | Outbound Rule is created in NACL `enhanced-vpc-nacl-application` |
| 33 | Network ACL | `enhanced-vpc-nacl-database` | This Network ACL will be applied on Database Subnets (db-subnet-1, db-subnet-2) |
| 34 | Network ACL Rule |  | Inbound Rule is created in NACL `enhanced-vpc-nacl-database` |
| 35 | Network ACL Rule |  | Outbound Rule is created in NACL `enhanced-vpc-nacl-database` |
| 36 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Public Route Table `enhanced-vpc-rt-public` with Public Subnet `web-subnet-1` |
| 37 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Public Route Table `enhanced-vpc-rt-public` with Public Subnet `web-subnet-2` |
| 38 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Infrastructure Route Table `enhanced-vpc-rt-infra` with Infrastructure Subnet `infra-subnet-1` |
| 39 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Infrastructure Route Table `enhanced-vpc-rt-infra` with Infrastructure Subnet `infra-subnet-2` |
| 40 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Application Route Table `enhanced-vpc-rt-application` with Application Subnet `application-subnet-1` |
| 41 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Application Route Table `enhanced-vpc-rt-application` with Application Subnet `application-subnet-2` |
| 42 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Database Route Table `enhanced-vpc-rt-database` with Database Subnet `db-subnet-1` |
| 43 | RT-Subnet Association | `rtbassoc-xxxxxxxx` | Association of Database Route Table `enhanced-vpc-rt-databse` with Database Subnet `db-subnet-2` |

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
