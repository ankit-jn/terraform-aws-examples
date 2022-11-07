account_id = "112233445566"

description = "KMS key for Symmetric - Generate and Verify HMAC"

key_spec = "HMAC_512"
key_usage = "GENERATE_VERIFY_MAC"

aliases = ["hmac"]

key_administrators =  [
    "arn:aws:iam::112233445566:user/arjstack-training"
]

key_grants_users = [
    "arn:aws:iam::112233445566:role/aws-service-role/support.amazonaws.com/AWSServiceRoleForSupport",
    "arn:aws:iam::112233445566:user/arjstack-training",
    "arn:aws:iam::111222333444:root"
]

key_symmetric_hmac_users = [
    "arn:aws:iam::112233445566:role/aws-service-role/rds.amazonaws.com/AWSServiceRoleForRDS",
    "arn:aws:iam::111222333444:root"
]

tags = {
    "CostCenter" = "1234"
}