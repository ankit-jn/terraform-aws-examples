module "efs" {
    # source = "git::https://github.com/arjstack/terraform-aws-efs.git"
    source = "../../../terraform-aws-efs"

    name = var.name
    availability_zone_name = var.availability_zone_name

    throughput_mode = var.throughput_mode

    encrypt_disk = var.encrypt_disk
    create_kms_key = var.create_kms_key

    mount_targets = var.mount_targets

    transition_to_ia = var.transition_to_ia
    transition_from_ia = var.transition_from_ia

    attach_policy_prevent_anonymous_access = var.attach_policy_prevent_anonymous_access

    create_sg = var.create_sg
    vpc_id = var.vpc_id
    
    sg_rules = var.sg_rules
    allowed_sg = var.allowed_sg
    additional_sg = var.additional_sg

    default_tags = var.default_tags
}