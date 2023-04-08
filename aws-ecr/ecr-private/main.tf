variable "repositories" {}

module "ecr" {
    source = "git::https://github.com/ankit-jn/terraform-aws-ecr.git"

    repositories = var.repositories
}