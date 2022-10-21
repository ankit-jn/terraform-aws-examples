# ARJ-Stack: Terraform AWS -> Load Balancer Example: Internet Facing Application Load Balancer with HTTP Listeners

This Example configuration is a demonstration of [Module: Terraform AWS Load Balancer](https://github.com/arjstack/terraform-aws-load-balancer) utilization to create Application Load Balancer with rich combination of target groups and HTTP based listeners and rules

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Application Load Balancer | `arjstack-alb` |  |
| 2 | Target Group | `alb-target-8081` | Target Type: `ip`, Target Port: `8081` |
| 3 | Target Group | `alb-target-8082` | Target Type: `ip`, Target Port: `8082` |
| 4 | Target Group | `alb-target-8083` | Target Type: `ip`, Target Port: `8083` |
| 5 | Target Group | `alb-target-8084` | Target Type: `ip`, Target Port: `8084` |
| 6 | Target Group | `alb-target-8085` | Target Type: `ip`, Target Port: `8085` |
| 7 | Load Balancer Listener |  | Listener Protocol: HTTP, Listener Port: 80<br>Default Action: redirect to another host |
| 8 | Load Balancer Listener |  | Listener Protocol: HTTP, Listener Port: 8080<br>Default Action: Forward to multiple targets <br>- `alb-target-8081` (70% raffic)<br>- `alb-target-8082` (30% raffic) |
| 9 | Load Balancer Listener |  | Listener Protocol: HTTP, Listener Port: 8081<br>Default Action: Forward to target group `alb-target-8081` |
| 10 | Load Balancer Listener |  | Listener Protocol: HTTP, Listener Port: 8082<br>Default Action: Forward to target group `alb-target-8082` |
| 11 | Load Balancer Listener |  | Listener Protocol: HTTP, Listener Port: 3306<br>Default Action: Fixed Response |
| 12 | Load balancer Listener Rule |  | For Listener with protocol: `HTTP` and port: `80`<br>&nbsp;&nbsp;&nbsp;<b>Action:</b> Forward to Target Group `alb-target-8083`<br>&nbsp;&nbsp;&nbsp;<b>Conditions:</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. path patterns - ["/images", "/videos"]<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. http request method: `GET` |
| 13 | Load balancer Listener Rule |  | For Listener with protocol: `HTTP` and port: `8080`<br>&nbsp;&nbsp;&nbsp;<b>Action:</b> Weighted Forward to Target Group<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;70% Traffic- `alb-target-8084`<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30% Traffic- `alb-target-8085`<br>&nbsp;&nbsp;&nbsp;<b>Conditions:</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Query String - location=asia |
| 14 | Security Group | `arjstack-alb-sg` |  |
| 15 | Security Group Rule |  | Self Ingress Rule |
| 16 | Security Group Rule |  | Ingress Rule to allow traffic on port 80 from 0.0.0.0/0 |
| 17 | Security Group Rule |  | Self Egress Rule |

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
