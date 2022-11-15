terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "4.22.0"
        }        
    }
}

provider "aws" {
    alias = "requester"
    profile = "arjstack-mumbai"
    region  = "ap-south-1"
}

provider "aws" {
    alias = "accepter"
    profile = "arjstack-frankfurt"
    region  = "eu-central-1"
}
