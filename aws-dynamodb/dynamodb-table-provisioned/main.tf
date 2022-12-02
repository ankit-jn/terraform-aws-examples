
module "dynamodb" {
    source = "git::https://github.com/arjstack/terraform-aws-dynamodb.git"
	
	name = var.name

	partition_key_name = var.partition_key_name
	partition_key_type = var.partition_key_type

	sort_key_name = var.sort_key_name
	sort_key_type = var.sort_key_type

	attributes = var.attributes
	
	read_capacity = var.read_capacity
	write_capacity = var.write_capacity

	stream_enabled = var.stream_enabled

	enable_point_in_time_recovery = var.enable_point_in_time_recovery

	enable_ttl = var.enable_ttl

	ttl_attribute = var.ttl_attribute

	enable_server_side_encryption = var.enable_server_side_encryption

	local_secondary_indexes = var.local_secondary_indexes
	global_secondary_indexes = var.global_secondary_indexes

	provision_contributor_insights = var.provision_contributor_insights 

	enable_autoscaling = var.enable_autoscaling

	read_capacity_autoscaling = var.read_capacity_autoscaling
	write_capacity_autoscaling = var.write_capacity_autoscaling

	gsi_capacity_autoscaling = var.gsi_capacity_autoscaling
}