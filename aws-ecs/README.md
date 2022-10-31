# ARJ-Stack: Terraform AWS Elastic Container Service Examples

Set of Example Configurations to create Elastic Container Service resources [ECS Cluster (EC2 based and Fargate based), ECS Service, Service Discovery etc.] in AWS

#### ECS Example: ECS Cluster with AWS Fargate

This Example configuration is used to create ECS cluster with AWS Fargate along with Fargate Capacity Providers.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-ecs/cluster-fargate) for the code-base to utilize [Module: Terraform AWS ECS](https://github.com/arjstack/terraform-aws-ecs) in order to manage ECS Cluster.

#### ECS Example: ECS Cluster with EC2 Instances managed via Auto Scalling Group

This Example configuration is used to create ECS cluster with EC2 instances managed through ASG based Capacity Providers.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-ecs/cluster-ec2) for the code-base to utilize [Module: Terraform AWS ECS](https://github.com/arjstack/terraform-aws-ecs) in order to manage ECS Cluster.

#### ECS Example: ECS Cluster with AWS Fargate and ECS Service

This Example configuration is used to create AWS Fargate ECS Cluster and ECS Service

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-ecs/cluster-with-service-fargate) for the code-base to utilize [Module: Terraform AWS ECS](https://github.com/arjstack/terraform-aws-ecs) in order to manage AWS Fargate ECS Cluster and ECS Service.

#### ECS Example: ECS Service with existing ECS cluster with AWS Fargate

This Example configuration is used to create ECS Service in existing ECS cluster with AWS Fargate

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-ecs/service-with-existing-cluster-fargate) for the code-base to utilize [Module: Terraform AWS ECS](https://github.com/arjstack/terraform-aws-ecs) in order to create ECS Service in existing ECS cluster with AWS Fargate

#### ECS Example: ECS Cluster with AWS EC2 Instance managed via ASG and ECS Service

This Example configuration is used to create AWS ECS Cluster with EC2 insatnces managed via ASG and ECS Service

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-ecs/cluster-with-service-ec2) for the code-base to utilize [Module: Terraform AWS ECS](https://github.com/arjstack/terraform-aws-ecs) in order to create AWS ECS Cluster with EC2 insatnces managed via ASG and ECS Service.

## Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).
