terraform {
    ## Remote Backend - S3 with state Locking through DynamoDB
    backend "s3" {
        encrypt = true
        bucket = "TF_STATE_FILE_BUCKET_NAME_PLACEHOLDER"
        key    = "TF_STATE_FILE_PLACEHOLDER"
        region = "TF_STATE_FILE_BUCKET_REGION_PLACEHOLDER"
    }
}
