## ARJ-Stack: Terraform AWS -> Cloudfront Distribution Network (CDN) Example

This Example configuration is a demonstration of [Module: Terraform AWS Cloudfront Distribution Network (CDN)](https://github.com/ankit-jn/terraform-aws-cdn) utilization to manage CDN.


#### Resources to be provisioned as an outcome of this example
---

| Sr. No. | Resource Type | Resource Name | Additional Details |
|:------|:------|:------|:------|
| 1 | CloudFront Distribution |  |  |
| 2 | CloudFront Function | `ARJStack-CloudFront-Viewer-Request-Function` | Event: `viewer-request` |
| 3 | Origin Access Identity |  |  |
| 4 | Cache Policy | `arjstack-cache` |  |
| 5 | Origin Request Policy | `arjstack-origin-request` |  |
| 6 | Response Headers Policy | `arjstack-resonse-headers` |  |
| 7 | Public Keys | `arjstack-cdn-training-key` |  |
| 8 | Public Keys | `arjstack-cdn-testing-key` |  |
| 9 | Key Group | `arjstack-cdn-key-group` |  |
| 10 | Field Level Encryption Profile | `arjstack-cdn-encryption` |  |
| 11 | S3 Bucket | `arjstack-docs` |  |
| 12 | S3 Bucket Policy |  |  |


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

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/ankit-jn/terraform-aws-examples/graphs/contributors).