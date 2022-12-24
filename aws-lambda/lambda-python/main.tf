module "lambda" {
    source = "git::https://github.com/arjstack/terraform-aws-lambda.git?ref=v1.0.0"   
    
    name = var.name
    policies = var.policies
    description = var.description
    runtime = var.runtime
    file_name = "${path.module}/python/greetings.zip"
    handler = var.handler
    publish = var.publish
    environment_variables = var.environment_variables
    subnet_ids = var.subnet_ids
    sg_ids = var.sg_ids
    aliases = var.aliases
    create_lambda_function_url = var.create_lambda_function_url
    tags = var.tags

    depends_on = [
        data.archive_file.this
    ]
}

data archive_file "this" {
    type        = "zip"
    source_dir  = "${path.module}/python/"
    output_path = "${path.module}/python/greetings.zip"
}