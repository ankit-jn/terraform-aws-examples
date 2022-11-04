module "nlb" {
    source = "git::https://github.com/arjstack/terraform-aws-load-balancer.git?ref=v1.0.0"
    
    name    = var.name
    lb_type = var.lb_type

    vpc_id = var.vpc_id
    
    // No need to define `subnets` if `subnet_mappings` are defined, 
    // Even If it is defined in combination with `subnet_mappings`, 
    // the property `subnet_mappings` will take preference over `subnets`
    subnets = var.subnets

    subnet_mappings = var.subnet_mappings

    enable_deletion_protection = var.enable_deletion_protection
    enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing

    default_tags = var.default_tags
    
}