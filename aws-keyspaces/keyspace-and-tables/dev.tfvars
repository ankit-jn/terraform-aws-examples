keyspace_name = "arjstack_keyspace"

keyspace_tables = [
    {
        name = "inventory"
        default_time_to_live = 1
        enable_ttl   = true
        columns = [
            {
                name = "ID"
                type = "bigint"
            },
            {
                name = "Code"
                type = "ascii"
            },
            {
                name = "Name"
                type = "text"
            },
            {
                name = "Inventory_Type"
                type = "ascii"
            },
            {
                name = "Status"
                type = "text"
            }
        ]
        partition_key_columns = ["ID", "Code"]
        clustering_key_columns = [
            {
                name = "Inventory_Type"
            }
        ]
        static_columns = [
            "Status"
        ]
        tags = {
            "BusinessUnit" = "Finance"
        }

    },
    {
        name = "invoice"
        thoughput_mode = "PROVISIONED"
        read_capacity_units = 1
        write_capacity_units = 1
        enable_point_in_time_recovery = true
        columns = [
            {
                name = "Invoice_Number"
                type = "bigint"
            },
            {
                name = "Invoice_Date"
                type = "timestamp"
            },
            {
                name = "Location"
                type = "text"
            },
            {
                name = "Customer_Name"
                type = "text"
            },
            {
                name = "Invoice_Amount"
                type = "double"
            },
            {
                name = "Status"
                type = "ascii"
            }
        ]
        partition_key_columns = ["Invoice_Number"]
        clustering_key_columns = [
            {
                name = "Location"
            }
        ]
        static_columns = [
            "Status"
        ]
    }
]

default_tags = {
    "Region" = "ap-south-1"
    "CostCenter" = "1234"
}