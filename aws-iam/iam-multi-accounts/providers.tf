terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "4.22.0"
        }        
    }
}

# AWS Provider configuration for Identity Account
provider "aws" {
    profile = "<Profile for Identity account>"
    region = "<Region to operate for Identity account>"
}

# AWS Provider configuration for Dev Account
provider "aws" {
    alias = "dev"
    profile = "<Profile for Dev account>"
    region = "<Region to operate for Dev account>"
}