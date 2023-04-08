module "alb" {
    source = "git::https://github.com/ankit-jn/terraform-aws-load-balancer.git"
    
    name    = var.name
    lb_type = var.lb_type
    
    vpc_id  = var.vpc_id
    subnets = var.subnets
    
    create_sg   = var.create_sg
    sg_name     = var.sg_name
    sg_rules    = var.sg_rules

    target_groups = var.target_groups

    default_ssl_policy = var.default_ssl_policy
    
    listeners       = var.listeners
    listener_rules  = var.listener_rules
        
    default_tags = var.default_tags
    
}