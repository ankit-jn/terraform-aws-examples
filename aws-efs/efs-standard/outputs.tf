output "efs_id" {
    description = "The ID that identifies the file system"
    value       = module.efs.efs_id
}

output "efs_arn" {
    description = "Amazon Resource Name of the file system."
    value       = module.efs.efs_arn
}

output "efs_dns" {
    description = "The DNS name for the filesystem."
    value       = module.efs.efs_dns
}

output "efs_mounts" {
    description = "The DNS name for the filesystem mount targets."
    value       = module.efs.efs_mounts
}

output "sg_id" {
    description = "The Security Group ID associated to EFS"
    value = module.efs.sg_id
}