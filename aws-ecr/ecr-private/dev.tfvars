repositories = [
    {
        name = "flight-service"
        enable_encryption = true
        enable_image_scan = true
        create_lifecycle_policy = true
        lifecycle_policy_file = "policies/flight-service-lifecycle-policy.json"
        attach_policy = true
        policy_file = "policies/ecr-policy.json"
    },
    {
        name = "currency-service"
        enable_encryption = true
        enable_image_scan = true
        attach_policy = true
        policy_file = "policies/ecr-policy.json"
    }
]