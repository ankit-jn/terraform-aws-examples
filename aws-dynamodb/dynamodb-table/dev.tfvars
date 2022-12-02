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

replicas = [
    {
        region_name = "eu-west-1"
        point_in_time_recovery = true
    }
]

provision_contributor_insights = true