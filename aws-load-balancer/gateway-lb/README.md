## ARJ-Stack: Terraform AWS -> Load Balancer Example: Gateway Load Balancer with GENEVE/6081 Listener

This Example configuration is a demonstration of [Module: Terraform AWS Load Balancer](https://github.com/arjstack/terraform-aws-load-balancer) utilization to create Gateway Load Balancer, target Group and Implicit Listener

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | Gateway Load Balancer | `arjstack-gateway-lb` |  |
| 2 | Target Group | `lb-target-instance` | Target Type: `instance`, Target Port: `6081` |
| 3 | Target Group | `lb-target-ip` | Target Type: `ip`, Target Port: `6081` |
| 4 | Load Balancer Listener |  | Listener Protocol: `GENEVE`, Listener Port: `6081`<br>Default Action: Forward to Target Group `lb-target-ip`  |

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