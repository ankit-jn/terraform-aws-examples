## ARJ-Stack: Terraform AWS -> SQS: FIFO Queue with SSE-SQS Encryption Example

This Example configuration is a demonstration of [Module: Terraform AWS Simple Queue Service (SQS)](https://github.com/ankit-jn/terraform-aws-sqs) utilization to create SQS Queue (FIFO) with message encryption through SSE-SQS.

#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | SQS Queue | `arjstack-fifo-execution.fifo` | Queue Type: FIFO |
| 2 | SQS Queue Policy |  |  Queue Access Policy |
| 3 | SQS Queue Redrive policy |  | Setting `my-dead-letter-queue.fifo` as Dead-letter Queue for this queue. |
| 4 | SQS Queue Redrive Allow policy |  | Setting `arjstack-hrms-queue.fifo` as source queue to consider this queue (`arjstack-fifo-execution.fifo`) as dead-letter queue. |

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.35.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.35.0 |

### Usages

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan --var-file=dev.tfvars
$ terraform apply --var-file=dev.tfvars
```

Note: Select the correct the AWS provider configurations in `provider.tf` file

### Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/ankit-jn/terraform-aws-examples/graphs/contributors).