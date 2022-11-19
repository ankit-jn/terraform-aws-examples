## ARJ-Stack: Terraform AWS Relational Database Service - Amazon Aurora Examples

Set of Example Configurations to create AWS RDS - Amazon Aurora resources

#### Amazon Aurora Example: Regional Amazon Aurora Mysql

This Example configuration is used to create the following resources:
- Regional Amazon Aurora MySQL RDS cluster
- 3 DB instances
- DB Subnet group
- DB cluster parameter group
- DB parameter group.
- Custom Endpoint
- Security Group
- Secure parameters in SSM Parameter Store

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-rds-aurora/aurora-mysql) for the code-base to utilize [Module: Terraform AWS Relational Database Service - Amazon Aurora](https://github.com/arjstack/terraform-aws-rds-aurora) in order to create Aurora MySQL cluster as stated above.

#### Amazon Aurora Example: Regional Amazon Aurora Mysql - serverless

This Example configuration is used to create the following resources:
- Regional Amazon Aurora MySQL RDS cluster with Scaling Configurations
- DB Subnet group
- DB cluster parameter group
- DB parameter group
- Security Group
- Secure parameters in SSM Parameter Store

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-rds-aurora/aurora-mysql-serverless) for the code-base to utilize [Module: Terraform AWS Relational Database Service - Amazon Aurora](https://github.com/arjstack/terraform-aws-rds-aurora) in order to create Aurora MySQL serverless cluster as stated above.

#### Amazon Aurora Example: Regional Amazon Aurora Mysql - serverless v2

This Example configuration is used to create the following resources:
- Regional Amazon Aurora MySQL RDS cluster  with Scaling Configurations
- 2 DB instances
- DB Subnet group
- DB cluster parameter group
- DB parameter group
- Security Group
- Secure parameters in SSM Parameter Store

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-rds-aurora/aurora-mysql-serverlessv2) for the code-base to utilize [Module: Terraform AWS Relational Database Service - Amazon Aurora](https://github.com/arjstack/terraform-aws-rds-aurora) in order to create Aurora MySQL serverless cluster as stated above.

#### Amazon Aurora Example: Global Amazon Aurora Mysql

This Example configuration is used to create the following resources:
- GLobal Amazon Aurora CLuster
- Regional Amazon Aurora MySQL RDS clusters (Primary and Secondary)
- 1 DB instance in each region (corresponding to its regional cluster)
- DB Subnet group in each region
- DB cluster parameter group in each region
- DB parameter group in each region
- Security Group in each region
- Secure parameters in SSM Parameter Store

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-rds-aurora/global-aurora-mysql) for the code-base to utilize [Module: Terraform AWS Relational Database Service - Amazon Aurora](https://github.com/arjstack/terraform-aws-rds-aurora) in order to create Global Aurora MySQL cluster as stated above.

### Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).