variable "repositories" {}

module "ecr" {
    source = "git::https://github.com/arjstack/terraform-aws-ecr.git?ref=v1.0.0"

    repositories = var.repositories
}