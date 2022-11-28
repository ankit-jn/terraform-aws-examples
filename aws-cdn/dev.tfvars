bucket_name = "arjstack-docs"
price_class = "PriceClass_200"
default_root_object = "/#/home"
error_responses = [
    {
        error_code            = 404
        response_code         = 200
        error_caching_min_ttl = 3000
        response_page_path    = "/"
    }
]
geo_restriction = {
    restriction_type = "whitelist"
    locations        = ["IN", "US", "CA"]
}

origins = [
    {
        origin_id = "documents-origin"
        domain_name = "arjstack-docs.s3.ap-south-1.amazonaws.com"

        custom_headers = {
          "X-Forwarded-Scheme" = "https"
        }
        enable_origin_shield = true
        shield_region = "ap-south-1"
    },
    {
        origin_id = "portal-origin"
        domain_name = "arjstack.com"

        custom_headers = {
          "X-Forwarded-Scheme" = "https"
        }

        custom_origin_config = {
            http_port              = 80
            https_port             = 443
            origin_protocol_policy = "https-only"
            origin_ssl_protocols   = ["TLSv1.2"]
        }

        enable_origin_shield = true
        shield_region = "ap-south-1"
    }
]

default_cache_behavior = {
    target_origin_id = "portal-origin"
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]

    compress     = true

    default_ttl     = 0
    min_ttl         = 0
    max_ttl         = 0

    encryption_profile_name = "arjstack-cdn-encryption"

    origin_request_policy_name = "arjstack-origin-request"
    cache_policy_name = "arjstack-cache"
    response_headers_policy_name = "arjstack-resonse-headers"

    handle_forwarding = true
    cookie_behavior = "none"
    query_strings = false
}

ordered_cache_behaviors = [ 
    {
        target_origin_id = "documents-origin"
        viewer_protocol_policy = "https-only"
        allowed_methods  = ["GET", "HEAD", "OPTIONS"]
        cached_methods   = ["GET", "HEAD"]

        compress     = true
        origin_request_policy_name = "arjstack-origin-request"
        cache_policy_name = "arjstack-cache"
        response_headers_policy_name = "arjstack-resonse-headers"
    }
]

cache_policies = [
    {
        name = "arjstack-cache"
        
        default_ttl     = 1800
        min_ttl         = 864000
        max_ttl         = 300

        cookie_behavior = "all"
        header_behavior = "whitelist"
        headers_items = "Host,Accept"
        query_string_behavior = "all"
        enable_accept_encoding_brotli = true
        enable_accept_encoding_gzip = true
    }
]

origin_request_policies = [
    {
        name = "arjstack-origin-request"

        cookie_behavior = "all"
        header_behavior = "whitelist"
        headers_items = "Host,Accept,CloudFront-Viewer-ASN"
        query_string_behavior = "all"
        enable_accept_encoding_brotli = true
        enable_accept_encoding_gzip = true
    }
]

response_headers_policies = [
    {
        name = "arjstack-resonse-headers"

        configure_cors = true
        access_control_allow_credentials = false
        allowed_origins = ["*"]
        allowed_methods = ["GET","HEAD","PUT","POST","PATCH","DELETE","OPTIONS"]
        exposed_headers = ["*"]

        configure_strict_transport_security = true
        strict_transport_security = {
            max_age_sec = 31536000
            preload = true
        }
        configure_content_type_options = true
        configure_frame_options = true
        frame_option = "SAMEORIGIN"

        configure_xss_protection = true
        configure_referrer_policy = true
        policy = "strict-origin-when-cross-origin"
    }
]

create_origin_access_identity = true

public_keys = [
    {
        name = "arjstack-cdn-training-key"
        key_file = "key.pub"
    },
    {
        name = "arjstack-cdn-testing-key"
        key_file = "key.pub"
    }
]

key_groups = [
    {
        name = "arjstack-cdn-key-group"
        keys = "arjstack-cdn-training-key,arjstack-cdn-testing-key"
    }
]

encryption_profiles = [
    {
        name = "arjstack-cdn-encryption"
        key_name = "arjstack-cdn-training-key"
        provider_id = "ARJSTACk"
        field_patterns = ["Name", "DateOfBirth"]
    }
]

default_tags = {
    "CostCenter" = "1234"
}

s3_tags = {
    "Region" = "ap-south-1"
}

cdn_tags = {
    "Application" = "Training"
}