cluster_name = "arjstack-dev"
use_fargate = true

enable_cloudwatch_container_insights = true

fargate_capacity_providers = {
    "FARGATE" = {
        default_strategy = {
            base = 1
            weight = 2
        }
    }
    "FARGATE_SPOT" = {
        default_strategy = {
            weight = 1
        }
    }
}