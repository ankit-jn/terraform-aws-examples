module "alb" {
    #source = "git::https://github.com/arjstack/terraform-aws-load-balancer.git"
    source = "../../../terraform-aws-load-balancer"
    name = "arjstack-alb"
    lb_type = "application"
    
    subnets = [ "subnet-1xxxx..........", "subnet-2x............." ]
    
    create_sg = true
    vpc_id = "vpc-xxxxx........."
    sg_name = "arjstack-alb-sg"
    
    sg_rules = var.sg_rules

    target_groups = var.target_groups

    default_ssl_policy = "ELBSecurityPolicy-2016-08"
    listeners = var.listeners
    listener_rules = var.listener_rules
        
    default_tags = {
        "CostCenter" = "1234"
    }
    
}

