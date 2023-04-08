module "cloudfront" {
    source = "git::https://github.com/ankit-jn/terraform-aws-cdn.git"
    
    price_class = var.price_class
    default_root_object = var.default_root_object
    error_responses = var.error_responses
    geo_restriction = var.geo_restriction

    origins = var.origins

    default_cache_behavior  = var.default_cache_behavior
    ordered_cache_behaviors = var.ordered_cache_behaviors    
    
    cache_policies            = var.cache_policies
    origin_request_policies   = var.origin_request_policies
    response_headers_policies = var.response_headers_policies

    create_origin_access_identity = var.create_origin_access_identity
    
    public_keys         = var.public_keys
    key_groups          = var.key_groups
    encryption_profiles = var.encryption_profiles
    
    cloudfront_functions = var.cloudfront_functions
    
    tags = merge(var.default_tags, var.cdn_tags)

    depends_on = [
        module.s3_bucket
    ]
}

module "s3_bucket" {
    source = "git::https://github.com/ankit-jn/terraform-aws-s3"
    
    name = var.bucket_name
    default_tags = merge(var.default_tags, var.cdn_tags, var.s3_tags)
}

module "s3_bucket_policy" {
    source = "git::https://github.com/ankit-jn/terraform-aws-s3"
    
    name = var.bucket_name
    create = false
    attach_bucket_policy = true
    policy_content = data.aws_iam_policy_document.this.json

    depends_on = [
        module.s3_bucket,
        data.aws_iam_policy_document.this
    ]
}

data aws_iam_policy_document "this" {
    statement {
        effect = "Allow"

        actions = [
            "s3:GetObject"
        ]

        resources = [
            "arn:aws:s3:::${var.bucket_name}",
            "arn:aws:s3:::${var.bucket_name}/*"
        ]

        principals {
            type        = "AWS"
            identifiers = [module.cloudfront.oai_iam_arn]
        }
    }

    depends_on = [
        module.cloudfront,
        module.s3_bucket
    ]
}