# ARJ-Stack: Terraform AWS Simple Storage Service (S3) Examples

Set of Example Configurations to create AWS S3 Buckets

#### Amazon S3 Example: Simple Bucket (private)

This Example configuration is used to create a simple but private S3 bucket.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-s3/s3-private) for the code-base to utilize [Module: Terraform AWS Simple Storage Service (S3)](https://github.com/arjstack/terraform-aws-s3) in order to manage S3 bucket as stated above.

#### Amazon S3 Example: S3 Bucket (with versioning enabled)

This Example configuration is used to create S3 bucket with versioning enabled.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-s3/s3-versioned) for the code-base to utilize [Module: Terraform AWS Simple Storage Service (S3)](https://github.com/arjstack/terraform-aws-s3) in order to manage S3 bucket as stated above.

#### Amazon S3 Example: S3 Bucket (Encrypted via Amazon S3-managed keys (SSE-S3))

This Example configuration is used to create S3 bucket with versioning and SSE-S3 based encryption enabled.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-s3/s3-encrypted) for the code-base to utilize [Module: Terraform AWS Simple Storage Service (S3)](https://github.com/arjstack/terraform-aws-s3) in order to manage S3 bucket as stated above

#### Amazon S3 Example: S3 Bucket (Encrypted with SSE-kms)

This Example configuration is used to create S3 bucket with versioning and SSE-kms based encryption enabled (hence a new KMS key is also provisioned)

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-s3/s3-encrypted-kms) for the code-base to utilize [Module: Terraform AWS Simple Storage Service (S3)](https://github.com/arjstack/terraform-aws-s3) in order to manage S3 bucket as stated above

## Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).
