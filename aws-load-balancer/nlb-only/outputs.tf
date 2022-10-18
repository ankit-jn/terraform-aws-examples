output "arn" {
    description = "The ARN of the Network load balancer"
    value       = module.nlb.arn
}

output "dns_name" {
    description = "The DNS name of the Network load balancer."
    value       = module.nlb.dns_name
}

output "zone_id" {
    description = "The canonical hosted zone ID of the Network load balancer"
    value       = module.nlb.zone_id
}