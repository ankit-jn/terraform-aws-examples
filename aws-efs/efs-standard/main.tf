module "efs" {
    source = "git::https://github.com/ankit-jn/terraform-aws-efs.git"
    
    name = var.name

    performance_mode = var.performance_mode
    throughput_mode = var.throughput_mode
    provisioned_throughput_in_mibps = var.provisioned_throughput_in_mibps

    encrypt_disk = var.encrypt_disk
    create_kms_key = var.create_kms_key

    mount_targets = var.mount_targets

    transition_to_ia = var.transition_to_ia

    attach_efs_policy = var.attach_efs_policy
    policy_file = var.policy_file
    attach_policy_prevent_root_access = var.attach_policy_prevent_root_access
    attach_policy_prevent_anonymous_access = var.attach_policy_prevent_anonymous_access

    create_sg = var.create_sg
    vpc_id = var.vpc_id
    
    sg_rules = var.sg_rules
    allowed_sg = var.allowed_sg
    additional_sg = var.additional_sg

    default_tags = var.default_tags
}