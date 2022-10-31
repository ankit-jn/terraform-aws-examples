variable "fargate_capacity_providers" {
  default = {
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
}
