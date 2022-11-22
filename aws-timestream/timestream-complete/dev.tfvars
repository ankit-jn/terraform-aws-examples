database_name = "arjstack-timestream"
create_kms_key = true

tables = [
    {
        name = "inventory"
        magnetic_store_retention_period = 1
        memory_store_retention_period   = 1
        enable_magnetic_store_writes = true
        error_log_location = {
            bucket_name = "arjstack-ts-logs"
            encryption_option = "SSE_S3"
            object_key_prefix = "ts/inventory"
        }
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