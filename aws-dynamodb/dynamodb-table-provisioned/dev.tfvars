name = "arjstack-inventory"

partition_key_name = "ArticleId"
partition_key_type = "S"

sort_key_name = "ArticleType"
sort_key_type = "S"

attributes = [
    {
        name = "StoreName"
        type = "S"
    },
    {
        name = "Vendor"
        type = "S"
    }
]

read_capacity = 1
write_capacity = 1

stream_enabled = true

enable_point_in_time_recovery = true

enable_ttl = true

ttl_attribute = "ExpiryTimestamp"

enable_server_side_encryption = true

local_secondary_indexes = [
    {
        name = "LSI-1"
        range_key = "StoreName"
    },
    {
        name = "LSI-2"
        range_key = "Vendor"
    }
]

global_secondary_indexes = [
    {
        name = "GSI-1"
        partition_key   = "ArticleId"
        range_key       = "StoreName"
        read_capacity   = 1
        write_capacity  = 1
    }
]

provision_contributor_insights = true

enable_autoscaling = true

read_capacity_autoscaling = {
    max_capacity = 2
}

write_capacity_autoscaling = {
    max_capacity = 2
    scale_in_cooldown = 60
    scale_out_cooldown = 40
    target_utilization = 60
}

gsi_capacity_autoscaling = {
    "GSI-1" = {
        min_read_capacity = 1
        max_read_capacity = 2
        min_write_capacity = 1
        max_write_capacity = 2
        scale_in_cooldown = 70
        scale_out_cooldown = 60
        target_utilization = 80
    }
}