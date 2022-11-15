terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "4.22.0"
        }        
    }
}

provider "aws" {
    profile = "arjstack-mumbai"
    region  = "ap-south-1"
}
