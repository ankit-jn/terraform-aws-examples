output "cluster_arn" {
    value = module.neptune.cluster_arn
}

output "cluster_endpoint" {
    value = module.neptune.cluster_endpoint
}

output "cluster_reader_endpoint" {
    value = module.neptune.cluster_reader_endpoint
}

output "port" {
    value = module.neptune.port
}

output "neptune_subnet_group" {
    value = module.neptune.neptune_subnet_group
}

output "instances" {
    value = module.neptune.instances
}

output "custom_endpoints" {
    value = module.neptune.custom_endpoints
}

output "sg_id" {
    value = module.neptune.sg_id
}