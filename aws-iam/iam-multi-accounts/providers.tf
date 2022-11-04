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
    profile = "arjstack-training"
    region = "ap-south-1"
}

# AWS Provider configuration for Dev Account
provider "aws" {
    alias = "dev"
    profile = "arjstack-secondary"
    region = "ap-south-1"
}