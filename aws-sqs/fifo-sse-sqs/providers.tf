terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "4.35.0"
        }        
    }
}

###########################################################################
# Use the provider block among the following as per the suitable scenarios 
###########################################################################

# # Configure AWS Provider simply if crdentials are exposed as with following enmviroment variables:
# # AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
# provider "aws" {
#     region = "<Region Name>"
# }

# # Configure AWS Provider based on AWS Credential
# provider "aws" {
#     access_key  = "<Access key ID>"
#     secret_key  = "<Secret Access key>"
#     region      = "<Region Name>"
# }

# Configure AWS Provider based on AWS Credential profile
provider "aws" {
    profile = "arjstack-training"
    region  = "ap-south-1"
}

# # Configure AWS Provider based on AWS Credential profile if COnfig files are at some specific path
# provider "aws" {
#   shared_config_files      = ["<Complete Path of the folder>/.aws/conf"]
#   shared_credentials_files = ["<Complete Path of the folder>/.aws/creds"]
#   profile                  = "<AWS Profile Name>"
# }

# # Configure AWS Provider based on IAM role
# provider "aws" {
#     profile = "<AWS Profile Name>"
#     region  = "<Region Name>"

#     assume_role {
#         role_arn     = "arn:aws:iam::<ACCOUNT ID>:role/<Role Name>"
#     }
# }
