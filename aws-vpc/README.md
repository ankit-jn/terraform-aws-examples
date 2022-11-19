## ARJ-Stack: Terraform AWS VPC Examples

Set of Example Configurations to create AWS VPC


#### VPC Example: Simple VPC

This Example configuration is used to create a Simple AWS VPC with 1 public subnet having its own dedicated NACL and deciated Route Table.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-vpc/simple-vpc) for the code-base to utilize [Module: Terraform AWS VPC](https://github.com/arjstack/terraform-aws-vpc) in order to create Simple VPC as stated above.

#### VPC Example: VPC with additional CIDR

This Example configuration is used to create a Simple VPC with 2 subnets from its primary CIDR having its own dedicated NACL and deciated route table along with additional seconday CIDR which is utilized to create 2 more Infra subnets.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-vpc/vpc-cidr-extension) for the code-base to utilize [Module: Terraform AWS VPC](https://github.com/arjstack/terraform-aws-vpc) in order to create VPC as stated above.

#### VPC Example: Enhanced VPC

This Example configuration is used to create Enhanced AWS VPC with the following features:
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

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-vpc/enhanced-vpc) for the code-base to utilize [Module: Terraform AWS VPC](https://github.com/arjstack/terraform-aws-vpc) in order to create Enhanced VPC as stated above.

#### VPC Example: VPC with Single NAT Gateway

This Example configuration is used to create AWS VPC having Single NAT Gateway with the following features:
 - VPC with default resources
 - Multiple subnets (For the different wrokloads) from both CIDR (primary as well as secondary CIDR)
    - Infra subnets (Public)
    - Application Subnets (Private)
    - Database subnets (Private)
 - Dedicated NACL for each subnet
 - Dedicated Route table for each subnet type (i.e. 3 Route tables)
 - Single NAT Gateway in Infra subnet
 - Defined Routes to Internet via NAT Gateway in Private Route Tables (Application and Database Subnets)
 - Well Managed tagging on resources
 - etc...

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-vpc/single-nat-vpc) for the code-base to utilize [Module: Terraform AWS VPC](https://github.com/arjstack/terraform-aws-vpc) in order to create VPC as stated above.

#### VPC Example: VPC with Multiple NAT Gateways

This Example configuration is used to create AWS VPC having multiple NAT Gateways with the following features:
 - VPC with default resources
 - Multiple subnets (For the different wrokloads) from both CIDR (primary as well as secondary CIDR)
    - Infra subnets (Public)
    - Application Subnets (Private)
    - Database subnets (Private)
 - Dedicated NACL for each subnet
 - Dedicated Route table for each subnet type (i.e. 3 Route tables)
 - Multiple NAT Gateways in Infra subnets (each in different subnet)
 - Defined Routes to Internet via respective NAT Gateway (as configured) in Private Route Tables (Application and DB Subnets)
 - Well Managed tagging on resources
 - etc...

Refer [Configuration Exampl](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-vpc/multiple-nat-vpc) for the code-base to utilize [Module: Terraform AWS VPC](https://github.com/arjstack/terraform-aws-vpc) in order to create VPC as stated above.

### Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).