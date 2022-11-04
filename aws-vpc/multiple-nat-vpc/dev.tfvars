vpc_name = "multiple-nat-vpc"
vpc_cidr = "10.1.0.0/20"

vpc_dns_configs = {
    enable_dns_support  = true
    dns_host_name       = true
}

dedicated_network_acl = true
dedicated_route_table = true

create_igw = true

nat_gateways = {
    "1" = "infra-subnet-1"
    "2" = "infra-subnet-2"
}

subnets_infra = [
    {
        subnet_core_configs = {
            name                = "infra-subnet-1"
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
            cidr_block = "10.1.2.0/23"
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

subnets_application = [
    {
        subnet_core_configs = {
            name                = "application-subnet-1"
            availability_zone   = "ap-south-1a"
        }
        subnet_ip_configs = {
            cidr_block = "10.1.4.0/22"
        } 
        subnet_dns_configs = {
            enable_resource_name_dns_a_record_on_launch = true
        }               
        subnet_tags = {
            "DeployableUnit"    = "Application Workload"
            "RunTime"           = "24x7"
        }
    },
    {
        subnet_core_configs = {
            name                = "application-subnet-2"
            availability_zone   = "ap-south-1b"
        }
        subnet_ip_configs = {
            cidr_block = "10.1.8.0/22"
        } 
        subnet_dns_configs = {
            enable_resource_name_dns_a_record_on_launch = true
        }               
        subnet_tags = {
            "DeployableUnit"    = "Application Workload"
            "RunTime"           = "24x7"
        }
    }
]

subnets_database = [
    {
        subnet_core_configs = {
            name                = "db-subnet-1"
            availability_zone   = "ap-south-1a"
        }
        subnet_ip_configs = {
            cidr_block = "10.1.12.0/23"
        } 
        subnet_dns_configs = {
            enable_resource_name_dns_a_record_on_launch = true
        }               
        subnet_tags = {
            "DeployableUnit"    = "Database Workload"
            "RunTime"           = "24x7"
        }
    },
    {
        subnet_core_configs = {
            name                = "db-subnet-2"
            availability_zone   = "ap-south-1b"
        }
        subnet_ip_configs = {
            cidr_block = "10.1.14.0/23"
        } 
        subnet_dns_configs = {
            enable_resource_name_dns_a_record_on_launch = true
        }               
        subnet_tags = {
            "DeployableUnit"    = "Database Workload"
            "RunTime"           = "24x7"
        }
    }
]

default_tags = {
    "BusinessUnit"  = "Research and Development"
    "Environment"   = "Development"
    "Region"        = "ap-south-1"
    "Project"       = "Terraform Modules"
}
vpc_tags = {
    "BusinessUnit"  = "Research and Development"
    "Project"       = "Terraform Modules"
    "Purpose"       = "Isolated CLoud Space"
}
igw_tags = {
    "Purpose"   = "Internet Access"   
}
rt_default_tags = {
    "Purpose"   = "Establish Routes"
}
subnet_default_tags = {
    "Purpose"   = "Workload Segregation"
}
network_acl_default_tags = {
    "Purpose"   = "Network Access Control"
}