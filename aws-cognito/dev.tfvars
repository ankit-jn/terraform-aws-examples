user_pool_name = "arjstack-pool"
recovery_mechanisms = {
    "verified_email" = 1
    "verified_phone_number" = 2
}
schemas = [
    {
        name = "name"
        attribute_data_type = "String"
        developer_only_attribute = false
        mutable = true
        required = true
        min_length = 0
        max_length = 2048
    },
    {
        name = "email"
        attribute_data_type = "String"
        developer_only_attribute = false
        mutable = true
        required = true
        min_length = 0
        max_length = 2048
    },
    {
        name = "age"
        attribute_data_type = "Number"
        developer_only_attribute = false
        mutable = true
        required = false
        min_value = 1
        max_value = 20
    },
    {
        name = "active"
        attribute_data_type = "Boolean"
        developer_only_attribute = true
        mutable = true
        required = false
    }
]

username_attributes = ["email", "phone_number"]

app_clients = [
    {
        name = "sandbox"
    }
]