# ARJ-Stack: Terraform AWS Elastic Container Service Examples

Set of Example Configurations to create Elastic Container Service resources [ECS Cluster (EC2 based and Fargate based), ECS Service, Service Discovery etc.] in AWS

#### ECS Example: ECS Cluster with AWS Fargate

This Example configuration is used to create ECS cluster with AWS Fargate along with Fargate Capacity Providers.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-ecs/cluster-fargate) for the code-base to utilize [Module: Terraform AWS ECS](https://github.com/arjstack/terraform-aws-ecs) in order to manage ECS Cluster.

#### ECS Example: ECS Cluster with EC2 Instances managed via Auto Scalling Group

This Example configuration is used to create ECS cluster with EC2 instances managed thorough ASG based Capacity Providers.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-ecs/cluster-ec2) for the code-base to utilize [Module: Terraform AWS ECS](https://github.com/arjstack/terraform-aws-ecs) in order to manage ECS Cluster.

## Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).
