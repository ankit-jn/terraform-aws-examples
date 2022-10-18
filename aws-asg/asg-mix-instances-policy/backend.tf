terraform {
    ## Remote Backend - S3 with state Locking through DynamoDB
    # backend "s3" {
    #     encrypt = true
    #     bucket = "<Bucket Name>"
    #     dynamodb_table = "<DynamoDB table name>"
    #     key    = "<terraform State File Name with Path>" #e.g. /path/to/my/key/terraforn.tfstate
    #     region = "<Bucket Region>" # e.g. ap-south-1
    # }
    
    backend "local" {
        path = "terraform.tfstate"
    }
}
