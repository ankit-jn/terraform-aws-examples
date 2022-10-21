output "arn" {
    description = "The ARN of the Gateway load balancer"
    value       = module.gateway_lb.arn
}

output "dns_name" {
    description = "The DNS name of the Gateway load balancer."
    value       = module.gateway_lb.dns_name
}

output "zone_id" {
    description = "The canonical hosted zone ID of the Gateway load balancer"
    value       = module.gateway_lb.zone_id
}

output "sg_id" {
    description = "The Security Group ID associated to Gateway Load Balancer"
    value       = module.gateway_lb.sg_id
}