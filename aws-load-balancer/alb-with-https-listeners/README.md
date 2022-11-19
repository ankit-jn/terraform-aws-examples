## ARJ-Stack: Terraform AWS -> Load Balancer Example: Internet Facing Application Load Balancer with HTTPS Listeners

This Example configuration is a demonstration of [Module: Terraform AWS Load Balancer](https://github.com/arjstack/terraform-aws-load-balancer) utilization to create Application Load Balancer with combination of target groups and HTTPS based listeners and rules

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Application Load Balancer | `arjstack-alb` |  |
| 2 | Target Group | `alb-target-80` | Target Type: `ip`, Target Port: `80` |
| 3 | Target Group | `alb-target-443-1` | Target Type: `ip`, Target Port: `443` |
| 4 | Target Group | `alb-target-443-2` | Target Type: `ip`, Target Port: `443` |
| 5 | Load Balancer Listener |  | Listener Protocol: `HTTP`, Listener Port: `80`<br>Default Action: redirect to HTTPS protocol |
| 6 | Load Balancer Listener |  | Listener Protocol: `HTTPS`, Listener Port: `443`<br>Default Action: Forward to target <br>- `alb-target-443-1` |
| 7 | Load balancer Listener Rule |  | For Listener with protocol: `HTTP` and port: `80`<br>&nbsp;&nbsp;&nbsp;<b>Action:</b> Forward to Target Group `alb-target-443-2`<br>&nbsp;&nbsp;&nbsp;<b>Conditions:</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. path patterns - ["/images", "/videos"]<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. http request method: `GET` |
| 8 | Security Group | `arjstack-alb-sg` |  |
| 9 | Security Group Rule |  | Self Ingress Rule |
| 10 | Security Group Rule |  | Ingress Rule to allow traffic on port 80 from 0.0.0.0/0 |
| 11 | Security Group Rule |  | Ingress Rule to allow traffic on port 443 from 0.0.0.0/0 |
| 12 | Security Group Rule |  | Self Egress Rule |

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