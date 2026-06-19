module "security_group" {
    source = "git::https://github.com/ankit-jn/terraform-aws-modules.git//aws-security-groups?ref=main"
    
    vpc_id = var.vpc_id
    name = var.sg_name

    ingress_rules = var.ingress_rules
    egress_rules  = var.egress_rules
    
}