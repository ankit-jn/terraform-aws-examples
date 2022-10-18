output "instance_profile_role_arn" {
    value = module.asg.instance_profile_role_arn
}

output "instance_profile_arn" {
    value = module.asg.instance_profile_arn
}

output "arn" {
    value = module.asg.arn
}

output "launch_template" {
    value = module.asg.launch_template
}