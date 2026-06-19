module "alb" {
    source = "git::https://github.com/ankit-jn/terraform-aws-modules.git//aws-load-balancer?ref=main"
    
    name = var.name
    lb_type = var.lb_type
    
    vpc_id = var.vpc_id
    subnets = var.subnets
    
    enable_deletion_protection = var.enable_deletion_protection
    drop_invalid_header_fields = var.drop_invalid_header_fields
    
    create_sg = var.create_sg
    sg_name = var.sg_name
    sg_rules = var.sg_rules

    default_tags = var.default_tags
}