variable "vpc_name" {
    default = "vpc-cidr-extension"
}

variable "vpc_cidr" {
    default = "10.1.0.0/20"
}

variable "vpc_dns_configs" {
    default = {
        enable_dns_support  = true
        dns_host_name       = true
    }
}

variable "vpc_secondary_cidr_blocks" {
    default = {
        "cidr-extended" = {
            cidr_block = "10.2.0.0/24"
        }
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
                    name                = "web-subnet-1"
                    availability_zone   = "ap-south-1a"
                }
                subnet_ip_configs = {
                    cidr_block = "10.1.0.0/23"
                    map_public_ip_on_launch = true
                } 
                subnet_dns_configs = {
                    enable_resource_name_dns_a_record_on_launch = true
                }               
                subnet_tags = {
                    "DeployableUnit"    = "Web Workload"
                    "RunTime"           = "24x7"
                }
            },
            {
                subnet_core_configs = {
                    name                = "web-subnet-2"
                    availability_zone   = "ap-south-1b"
                }
                subnet_ip_configs = {
                    cidr_block = "10.1.2.0/23"
                    map_public_ip_on_launch = true
                } 
                subnet_dns_configs = {
                    enable_resource_name_dns_a_record_on_launch = true
                }               
                subnet_tags = {
                    "DeployableUnit"    = "Web Workload"
                    "RunTime"           = "24x7"
                }
            }
        ]
}


variable "subnets_infra" {
    default = [
            {
                subnet_core_configs = {
                    name                = "infra-subnet-1"
                    availability_zone   = "ap-south-1a"
                }
                subnet_ip_configs = {
                    cidr_block = "10.2.0.0/25"
                    map_public_ip_on_launch = true
                } 
                subnet_dns_configs = {
                    enable_resource_name_dns_a_record_on_launch = true
                }               
                subnet_tags = {
                    "DeployableUnit"    = "Infrastructure Workload"
                    "RunTime"           = "24x7"
                }
            },
            {
                subnet_core_configs = {
                    name                = "infra-subnet-2"
                    availability_zone   = "ap-south-1b"
                }
                subnet_ip_configs = {
                    cidr_block = "10.2.0.128/25"
                    map_public_ip_on_launch = true
                } 
                subnet_dns_configs = {
                    enable_resource_name_dns_a_record_on_launch = true
                }               
                subnet_tags = {
                    "DeployableUnit"    = "Infrastructure Workload"
                    "RunTime"           = "24x7"
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