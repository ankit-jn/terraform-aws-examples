module "security_group" {
    source = "git::https://github.com/arjstack/terraform-aws-security-groups.git?ref=v1.0.0"
    
    vpc_id = var.vpc_id
    name = var.sg_name

    ingress_rules = var.ingress_rules
    egress_rules  = var.egress_rules
    
}