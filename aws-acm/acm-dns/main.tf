module "acm" {
    source = "git::https://github.com/arjstack/terraform-aws-acm.git?ref=v1.0.0"
    
    domain_name = var.domain_name
    alternative_domains = var.alternative_domains

    validation_method = var.validation_method

    record_certificate_details = var.record_certificate_details

    validate_certificate = var.validate_certificate

    hosted_zone_id = var.hosted_zone_id

    tags = var.tags
}