variable "sg_rules" {
    default = {
        "ingress" = [
                        {
                            rule_name = "Self Ingress Rule"
                            description = "Self Ingress Rule"
                            from_port =0
                            to_port = 0
                            protocol = "-1"

                            self = true
                        },
                        {
                            rule_name = "HTTP-80"
                            description = "IPv4 Rule"
                            from_port = 80
                            to_port = 80
                            protocol = "tcp"
                            ## Replace IP with actual values
                            cidr_blocks = ["0.0.0.0/0"]
                        },
                        {
                            rule_name = "HTTP-443"
                            description = "IPv4 Securred Rule"
                            from_port = 443
                            to_port = 443
                            protocol = "tcp"
                            ## Replace IP with actual values
                            cidr_blocks = ["0.0.0.0/0"]
                        },
                    ],
        "egress" = [
                    {
                        rule_name = "Self Egress Rule"
                        description = "Self Egress Rule"
                        from_port = 0
                        to_port = 0
                        protocol = "-1"

                        self = true
                    },
                ]
    }
}

variable "target_groups" {
    default = [
        {
            name = "alb-target-80"
            target_type  = "ip"
            port = 80
            protocol = "HTTP"
            interval = 45

            health_check = {
                healthy_threshold = 5
                unhealthy_threshold = 3
            }
            stickiness = {
                type = "lb_cookie"
                cookie_duration = 3600
            }
        },
        {
            name = "alb-target-443-1"
            target_type  = "ip"
            port = 443
            protocol = "HTTPS"
            interval = 45

            health_check = {
                healthy_threshold = 5
                unhealthy_threshold = 3
            }
            stickiness = {
                type = "lb_cookie"
                cookie_duration = 3600
            }
        },
        
        {
            name = "alb-target-443-2"
            target_type  = "instance"
            port = 443
            protocol = "HTTPS"
            interval = 45

            health_check = {
                healthy_threshold = 5
                unhealthy_threshold = 3
            }
            stickiness = {
                type = "lb_cookie"
                cookie_duration = 3600
            }
        }
    ]
}

variable "listeners" {
    default = {
        http = [
            {
                port = 80
                order = 10000
                action_type = "redirect"
                redirect = {
                    port        = "443"
                    protocol    = "HTTPS"
                    status_code = "HTTP_301"
                }
            },
         ]
        https = [
            {
                port = 443
                order = 10000
                certificate_domain = "arjstack.com"
                # certificate_arn = "arn:aws:acm:<region>:<account id>:certificate/<certificate id>"
                forward = {
                    target_groups = {
                        "alb-target-443-1" = {
                            weight = 100
                        }
                    }
                    stickiness = 60
                }  
            }          
        ]
    }
}

variable "listener_rules" {
    default = [
        {
            listener_protocol = "HTTPS"
            listener_port = 443
            priority = 100

            actions = {
                forward = {
                    target_group = "alb-target-443-2"
                }
            }
            conditions = {
                http_request_method = ["GET"]
                path_pattern = ["/images", "/videos"]
            }
        },
    ]
}