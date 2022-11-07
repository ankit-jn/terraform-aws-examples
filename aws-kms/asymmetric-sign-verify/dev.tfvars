account_id = "112233445566"

description = "KMS key pair for Asymmetric SIGN/VERIFY"

key_spec = "ECC_NIST_P521"
key_usage = "SIGN_VERIFY"

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

key_asymmetric_sign_verify_users = [
    "arn:aws:iam::112233445566:role/aws-service-role/rds.amazonaws.com/AWSServiceRoleForRDS",
    "arn:aws:iam::111222333444:root"
]

tags = {
    "CostCenter" = "1234"
}