module "security_group" {
    source = "git::https://github.com/ankit-jn/terraform-aws-security-groups.git"
    
    vpc_id = var.vpc_id
    name = var.sg_name

    ingress_rules = var.ingress_rules
    egress_rules  = var.egress_rules
    
}