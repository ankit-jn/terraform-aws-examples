# ARJ-Stack: Terraform AWS Auto Scaling Examples

Set of Example Configurations to create AWS Auto Scaling Group resources


#### Auto Scaling Example: ASG - Simple

This Example configuration is used to create ASG with Launch Template with existing IAM Roles and IAM Policies.

Resources to be Provisioned:

- Auto Scaling Group
- Launch template
- Instance Profile with Existing IAM role ARN

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-asg/asg-simple) for the code-base to utilize [Module: Terraform AWS Auto Scaling Group](https://github.com/arjstack/terraform-aws-asg) in order to Create ASG with Launch Template, Instance profile and Existing IAM resources

#### Auto Scaling Example: ASG - With IAM Resources

This Example configuration is used to create ASG with Launch Template as well as IAM Roles and IAM Policies. 

Resources to be Provisioned:

- Auto Scaling Group
- Launch template
- Instance Profile with the following IAM resources
    - IAM Role (Service Linked i.e. Trusted Entity - EC2 Service)
    - IAM Policies (which will be attached to IAM Role)

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-asg/asg-with-iam) for the code-base to utilize [Module: Terraform AWS Auto Scaling Group](https://github.com/arjstack/terraform-aws-asg) in order to Create ASG with Launch Template, Instance profile and new IAM resources having strategy of targeting multiple Instances.

#### Auto Scaling Example: ASG - Mix Instance policy

This Example configuration is used to create ASG with Mix Instances Policy approach. 

Resources to be Provisioned:

- Auto Scaling Group
- Launch template
- Instance Profile with the following IAM resources
    - IAM Role (Service Linked i.e. Trusted Entity - EC2 Service)
    - IAM Policies (which will be attached to IAM Role)

Refer [Configuration Example](https://github.com/arjstack/terraform-aws-examples/tree/main/aws-asg/asg-mix-instances-policy) for the code-base to utilize [Module: Terraform AWS Auto Scaling Group](https://github.com/arjstack/terraform-aws-asg) in order to Create ASG with Launch Template, Instance profile and new IAM resources having strategy of targeting multiple Instances.


## Authors

Module is maintained by [Ankit Jain](https://github.com/ankit-jn) with help from [these professional](https://github.com/arjstack/terraform-aws-examples/graphs/contributors).
