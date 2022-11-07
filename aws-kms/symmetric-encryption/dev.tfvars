account_id = "112233445566"

description = "KMS key for Symmetric Encryption"

key_spec = "SYMMETRIC_DEFAULT"
key_usage = "ENCRYPT_DECRYPT"

aliases = []
multi_region = true

enable_key_rotation = true

key_administrators =  [
    "arn:aws:iam::112233445566:user/arjstack-training"
]

key_grants_users = [
    "arn:aws:iam::112233445566:role/aws-service-role/support.amazonaws.com/AWSServiceRoleForSupport",
    "arn:aws:iam::112233445566:user/arjstack-training",
    "arn:aws:iam::111222333444:root"
]

key_users = [
    "arn:aws:iam::112233445566:role/aws-service-role/rds.amazonaws.com/AWSServiceRoleForRDS",
    "arn:aws:iam::111222333444:root"
]

tags = {
    "CostCenter" = "1234"
}