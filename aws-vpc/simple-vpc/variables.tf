variable "vpc_name" {
    default = "simple-vpc"
}

variable "vpc_cidr" {
    default = "10.0.0.0/24"
}

variable "vpc_dns_configs" {
    default = {
        enable_dns_support  = true
        dns_host_name       = true
    }
}

variable "dedicated_network_acl" {
    default = true
}

variable "dedicated_route_table" {
    default = true
}

variable "subnets_public" {
    default = [
        {
            subnet_core_configs = {
                name                = "public-subnet"
                availability_zone   = "ap-south-1a"
            }
            subnet_ip_configs = {
                cidr_block = "10.0.0.0/25"
                map_public_ip_on_launch = true
            }                
            subnet_tags = {
                "Region"    =   "Mumbai"
                "Project"   =   "Terraform AWS VPC Module Testing"
                "RunTime"   =   "24x7"
            }

        }
    ]
}

variable "default_tags" {
    default = {
        "BusinessUnit"  = "Research and Development"
        "Environment"   = "Development"
        "Region"        = "ap-south-1"
        "Project"       = "Terraform Modules"
    }
}