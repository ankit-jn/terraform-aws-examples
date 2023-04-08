module "sqs" {
    source = "git::https://github.com/ankit-jn/terraform-aws-sqs.git"
    
    name = var.name

    visibility_timeout_seconds  = var.visibility_timeout_seconds
    delay_seconds               = var.delay_seconds
    receive_wait_time_seconds   = var.receive_wait_time_seconds
    message_retention_seconds   = var.message_retention_seconds
    max_message_size            = var.max_message_size
    
    queue_senders   = var.queue_senders
    queue_receivers = var.queue_receivers
    
    sqs_managed_sse_enabled = var.sqs_managed_sse_enabled
    kms_managed_sse_enabled = var.kms_managed_sse_enabled
    kms_master_key_id       = module.kms.key_id

    enable_redrive          = var.enable_redrive
    dead_letter_queue_arn   = var.dead_letter_queue_arn
    maximum_receives        = var.maximum_receives
    
    allow_redrive       = var.allow_redrive
    redrive_permission  = var. redrive_permission
    source_queues       = var.source_queues
    
    tags = var.tags
}