database_name = "arjstack-timestream"

tables = [
    {
        name = "inventory"
        magnetic_store_retention_period = 1
        memory_store_retention_period   = 1
        enable_magnetic_store_writes = true
        tags = {
            "BusinessUnit" = "Finance"
        }

    },
    {
        name = "invoice"
        magnetic_store_retention_period = 1
        memory_store_retention_period   = 1
    }
]

default_tags = {
    "Region" = "eu-central-1"
    "CostCenter" = "1234"
}