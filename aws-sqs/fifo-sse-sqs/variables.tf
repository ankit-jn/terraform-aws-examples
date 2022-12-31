variable "name" {}
variable "fifo_queue" {}

variable "visibility_timeout_seconds" {}
variable "delay_seconds" {}
variable "receive_wait_time_seconds" {}
variable "message_retention_seconds" {}
variable "max_message_size" {}

variable "content_based_deduplication" {}
variable "deduplication_scope" {}
variable "fifo_throughput_limit" {}

variable "queue_senders" {}
variable "queue_receivers" {}

variable "sqs_managed_sse_enabled" {}
variable "kms_managed_sse_enabled" {}

variable "enable_redrive" {}
variable "dead_letter_queue_arn" {}
variable "maximum_receives" {}

variable "allow_redrive" {}
variable "redrive_permission" {}
variable "source_queues" {}

variable "tags" {}