module "sqs" {
    source = "git::https://github.com/arjstack/terraform-aws-sqs.git?ref=v1.0.0"
    
    name = var.name
    fifo_queue = var.fifo_queue
    
    visibility_timeout_seconds  = var.visibility_timeout_seconds
    delay_seconds               = var.delay_seconds
    receive_wait_time_seconds   = var.receive_wait_time_seconds
    message_retention_seconds   = var.message_retention_seconds
    max_message_size            = var.max_message_size
    
    content_based_deduplication = var.content_based_deduplication
    deduplication_scope = var.deduplication_scope
    fifo_throughput_limit = var.fifo_throughput_limit
    
    queue_senders   = var.queue_senders
    queue_receivers = var.queue_receivers
    
    sqs_managed_sse_enabled = var.sqs_managed_sse_enabled
    kms_managed_sse_enabled = var.kms_managed_sse_enabled

    enable_redrive          = var.enable_redrive
    dead_letter_queue_arn   = var.dead_letter_queue_arn
    maximum_receives        = var.maximum_receives
    
    allow_redrive       = var.allow_redrive
    redrive_permission  = var. redrive_permission
    source_queues       = var.source_queues
    
    tags = var.tags
}