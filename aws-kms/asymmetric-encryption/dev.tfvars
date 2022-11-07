account_id = "112233445566"

description = "KMS key pair for Asymmetric Encryption"

key_spec = "RSA_3072"
key_usage = "ENCRYPT_DECRYPT"

aliases = ["custom", "arj"]

deletion_window_in_days = 7

key_administrators =  [
    "arn:aws:iam::112233445566:user/arjstack-training"
]

key_grants_users = [
    "arn:aws:iam::112233445566:role/aws-service-role/support.amazonaws.com/AWSServiceRoleForSupport",
    "arn:aws:iam::112233445566:user/arjstack-training",
    "arn:aws:iam::111222333444:root"
]

key_asymmetric_public_encryption_users = [
    "arn:aws:iam::112233445566:role/aws-service-role/rds.amazonaws.com/AWSServiceRoleForRDS",
    "arn:aws:iam::111222333444:root"
]

tags = {
    "CostCenter" = "1234"
}