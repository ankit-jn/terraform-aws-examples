data aws_ssm_parameter "ecs_optimized_ami" {
    name = var.ssm_param_image
}

data template_file "user_data" {
  template = <<EOF
    echo "testing user Data"
  EOF
}

module "asg" {
    source = "git::https://github.com/arjstack/terraform-aws-asg.git"
    
    ### ASG Specific values
    name = var.name
    
    min_size = var.min_size
    max_size = var.max_size
    desired_capacity = var.desired_capacity
    
    vpc_zone_identifier = var.vpc_zone_identifier
    
    default_cooldown = var.default_cooldown
    default_instance_warmup = var.default_instance_warmup
    protect_from_scale_in = var.protect_from_scale_in
    
    ### Launch Template Specific values
    launch_template_name = var.launch_template_name
    launch_template_description = var.launch_template_description
    instance_type = var.instance_type
    image_id = jsondecode(data.aws_ssm_parameter.ecs_optimized_ami.value)["image_id"]
    user_data = base64encode(data.template_file.user_data.rendered)
    
    health_check_type = var.health_check_type
    
    ### Instance Profile Specific values
    create_instance_profile = true
    instance_profile_name = var.instance_profile_name
    instance_profile_path = var.instance_profile_path

    create_instance_profile_role = true
    instance_profile_policies = var.instance_profile_policies
    
    ### Tags
    default_tags = var.default_tags
    instance_profile_tags = var.instance_profile_tags
}