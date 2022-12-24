name = "arjstack-greetings"
policies = [
    {
        name = "lambda-policy"
        policy_file = "lambda-policy.json"
        description = "Lambda Policy"
        path = "/"
        tags = {
            "Name" = "lambda-policy"
        }
    }
]
description = "Greeting Lambda"
runtime = "python3.9"
handler = "greetings.lambda_handler"
publish = true
environment_variables = {
    "Environment" = "Dev"
}
subnet_ids = ["subnet-xxxxxxx", "subnet-zzzzzzzz"]
sg_ids = ["sg-123456788"]
aliases = [
    {
        name = "demo"
    }
]
create_lambda_function_url = true
tags = {
    CodeCenter = "1234"
}