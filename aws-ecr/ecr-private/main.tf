variable "repositories" {}

module "ecr" {
    source = "git::https://github.com/ankit-jn/terraform-aws-modules.git//aws-ecr?ref=main"

    repositories = var.repositories
}