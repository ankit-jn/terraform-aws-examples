module "ecr" {
    source = "git::https://github.com/arjstack/terraform-aws-ecr.git?ref=v1.0.0"

    repositories = [
      {
        name = "flight-service"
        enable_encryption = true
        enable_image_scan = true
        create_lifecycle_policy = true
        lifecycle_policy_file = "flight-service-lifecycle-policy.json"
        attach_policy = true
        policy_file = "ecr-policy.json"
      },
      {
        name = "currency-service"
        enable_encryption = true
        enable_image_scan = true
        attach_policy = true
        policy_file = "ecr-policy.json"
      }
    ]
}