## ARJ-Stack: Terraform AWS -> ECS Example: ECS Cluster with AWS Fargate and ECS Service

This Example configuration is a demonstration of [Module: Terraform AWS ECS](https://github.com/arjstack/terraform-aws-ecs) utilization to manage AWS Fargate ECS Cluster and ECS Service


#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | ECS Cluster | `arjstack-dev` | AWS Fargate based cluster with container insights enabled |
| 2 | Capacity Providers | `FARGATE` & `FARGATE_SPOT` | The Fargate capacity providers are attached with cluster |
| 3 | Service Discovery Private DNS Namespace | `arjstack.ecs.local` |  |
| 4 | ECS Service | `currency-service` |  |
| 5 | Task Definition | `svc-currency-service-task` |  |
| 6 | Service Discovery | `currency-service` |  |
| 7 | ECS service Autoscaling |  | Scalability dimension - `ecs:service:DesiredCount` |
| 8 | Scale-up Policy | `currency-service-asg-up` |  |
| 9 | Scale-down Policy | `currency-service-asg-down` |  |
| 10 | CLoudwatch log group | `/ecs/arjstack-dev/svc-currency-service` |  |
| 11 | Cloudwatch metric Alarm | `currency-service-cpu-high` | CloudWatch alarm (with metric `CPUUtilization`) that triggers the autoscaling up policy |
| 12 | Cloudwatch metric Alarm | `currency-service-cpu-low` | CloudWatch alarm (with metric `CPUUtilization`) that triggers the autoscaling down policy |
| 13 | Security Group | `ecs-sg-arjstack` | Security Group to be attached with ECS Service/Task |
| 14 | Security Group Ingress Rule |  | Self Egress Rule |
| 15 | Security Group Ingress Rule |  | Ingress from Source SG attached with Load Balancer |
| 16 | Security Group Egress Rule |  | Self Egress Rule |
| 17 | IAM Policy | `arjstack-ecr-access` | ECR Access policy |
| 18 | IAM Policy | `arjstack-s3-access` | S3 Access policy |
| 19 | IAM Role | `ecs-task` | IAM Role (Service linked) that the Amazon ECS container agent and the Docker daemon can assume |
| 20 | IAM Role | `ecs-task-execution` | IAM Role (Service linked) that Amazon ECS container task to make calls to other AWS services |
| 21 | Policy Attachment |  | IAM policy `arjstack-ecr-access` attachment with IAM Role `ecs-task` |
| 22 | Policy Attachment |  | IAM policy `arjstack-s3-access` attachment with IAM Role `ecs-task` |

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

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).