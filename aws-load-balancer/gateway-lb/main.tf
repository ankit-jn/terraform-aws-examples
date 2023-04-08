module "gateway_lb" {
    source = "git::https://github.com/ankit-jn/terraform-aws-load-balancer.git"
    
    name    = var.name
    lb_type = var.lb_type

    vpc_id  = var.vpc_id
    subnets = var.subnets
    
    enable_deletion_protection = var.enable_deletion_protection
    drop_invalid_header_fields = var.drop_invalid_header_fields
    enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing

    target_groups = var.target_groups

    gateway_listener = var.gateway_listener
    
    default_tags = var.default_tags
    
}