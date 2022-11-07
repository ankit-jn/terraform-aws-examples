# ARJ-Stack: Terraform AWS Key Management Service Keys Examples

Set of Example Configurations to create AWS KMS keys

#### KMS Example: Symmetric Key with Key usage [Encrypt and decrypt]

This Example configuration is used to create Symmetric KMS key for the use of encryption and decryption.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-kms/symmetric-encryption) for the code-base to utilize [Module: Terraform AWS KMS](https://github.com/arjstack/terraform-aws-kms) in order to manage KMS key as stated above.

#### KMS Example: Symmetric Key with Key usage [Generate and verify MAC]

This Example configuration is used to create Symmetric KMS key for the use to generate and verify MAC.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-kms/symmetric-hmac) for the code-base to utilize [Module: Terraform AWS KMS](https://github.com/arjstack/terraform-aws-kms) in order to manage KMS key as stated above.

#### KMS Example: Asymmetric Key with Key usage [Encrypt and decrypt]

This Example configuration is used to create Asymmetric KMS key pair for the use of encryption and decryption of public key.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-kms/asymmetric-encryption) for the code-base to utilize [Module: Terraform AWS KMS](https://github.com/arjstack/terraform-aws-kms) in order to manage KMS key as stated above.

#### KMS Example: Asymmetric Key with Key usage [Sign and verify]

This Example configuration is used to create Asymmetric KMS key pair for the use of sign and verify.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-kms/asymmetric-sign-verify) for the code-base to utilize [Module: Terraform AWS KMS](https://github.com/arjstack/terraform-aws-kms) in order to manage KMS key as stated above.

## Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).
