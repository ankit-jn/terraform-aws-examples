# ARJ-Stack: Terraform AWS IAM Examples

Set of Example Configurations to create AWS IAM resources

#### IAM Example: IAM Group and IAM Users management

This Example configuration is used to create a IAM Groups, IAM Users with different security credentials combinations and assign IAM users to different IAM groups.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-iam/iam-groups-and-users) for the code-base to utilize [Module: Terraform AWS IAM](https://github.com/arjstack/terraform-aws-iam) in order to manage IAM identities (Groups and Users).

#### IAM Example: Policy Management

This Example configuration is used to create a IAM Policies.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-iam/iam-policies) for the code-base to utilize [Module: Terraform AWS IAM](https://github.com/arjstack/terraform-aws-iam) in order to manage IAM Policies.

#### IAM Example: Roles Management along with Policy to be assigned

This Example configuration is used to create IAM identity - Roles.

- IAM Roles: based on Trusted Entiry Type - AWS Accounts
    - Allow entities in other AWS accounts belonging to you or a 3rd party to perform actions in this account.
    - Attach Policies (Both, Inbuilt as well as Custom Policies) with the role

- IAM Roles: Trusted Entiry Type - AWS Services
    - Allow AWS services like EC2, Lambda, or others to perform actions in this account.
    - Attach Policies (Both, Inbuilt as well as Custom Policies) with the role

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-iam/iam-roles) for the code-base to utilize [Module: Terraform AWS IAM](https://github.com/arjstack/terraform-aws-iam) in order to manage manage IAM identity (Roles).

#### IAM Example: Manage IAM Resources in a single account

This Example configuration is used to manage all the IAM resources in a single AWS account.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-iam/iam-single-account-complete) for the code-base to utilize [Module: Terraform AWS IAM](https://github.com/arjstack/terraform-aws-iam) in order to manage all the IAM resources in a single AWS account.

#### IAM Example: Manage IAM Resources across multiple accounts

This Example configuration is used to manage the IAM resources across multiple AWS account.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-iam/iam-multi-accounts) for the code-base to utilize [Module: Terraform AWS IAM](https://github.com/arjstack/terraform-aws-iam) in order to manage IAM resources across Multiple Accounts.

#### IAM Example: AWS Organization

This Example configuration is used to create AWS organization.

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-iam/iam-organization) for the code-base to utilize [Module: Terraform AWS IAM](https://github.com/arjstack/terraform-aws-iam) in order to create AWS organization.

## Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).
