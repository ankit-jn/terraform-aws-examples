vpc_name = "simple-vpc"
vpc_cidr = "10.0.0.0/24"

vpc_dns_configs = {
    enable_dns_support  = true
    dns_host_name       = true
}

dedicated_network_acl = true
dedicated_route_table = true

subnets_public = [
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

default_tags = {
    "BusinessUnit"  = "Research and Development"
    "Environment"   = "Development"
    "Region"        = "ap-south-1"
    "Project"       = "Terraform Modules"
}