name = "arjstack-standard-execution"

visibility_timeout_seconds = 60
delay_seconds = 1
receive_wait_time_seconds = 5
message_retention_seconds = 3600 ## 1 Hour
max_message_size = 131072 ## 128 Kib

queue_senders = [
    "arn:aws:iam::112233445566:user/ankit",
    "arn:aws:iam::112233445566:role/test-sender"
]
queue_receivers = [
    "arn:aws:iam::112233445566:user/jain",
    "arn:aws:iam::112233445566:role/test-receiver"
]

sqs_managed_sse_enabled = false
kms_managed_sse_enabled = true

enable_redrive = true
dead_letter_queue_arn = "arn:aws:sqs:ap-south-1:112233445566:my-dead-letter-queue"
maximum_receives = 5

allow_redrive = true
redrive_permission = "byQueue"
source_queues = [
    "arn:aws:sqs:ap-south-1:112233445566:arjstack-hrms-queue"
]

tags = {
    CostCenter = "Mumbai"
    Owner = "Arjstack"
}