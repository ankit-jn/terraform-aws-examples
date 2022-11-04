name    = "arjstack-alb"
lb_type = "application"

vpc_id  = "vpc-xxx........."
subnets = [ "subnet-1xx.......", "subnet-2xx......." ]

create_sg   = true
sg_name     = "arjstack-alb-sg"
    
sg_rules = {
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

target_groups = [
    {
        name = "alb-target-8081"
        target_type  = "ip"
        port = 8081
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
        name = "alb-target-8082"
        target_type  = "ip"
        port = 8082
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
        name = "alb-target-8083"
        target_type  = "ip"
        port = 8083
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
        name = "alb-target-8084"
        target_type  = "ip"
        port = 8084
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
        name = "alb-target-8085"
        target_type  = "ip"
        port = 8085
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
    }
]

default_ssl_policy = "ELBSecurityPolicy-2016-08"

listeners = {
    http = [
        {
            port = 80
            order = 10000
            action_type = "redirect"
            redirect = {
                host        = "arjstack.com"
                port        = "80"
                protocol    = "HTTPS"
                status_code = "HTTP_301"
            }
        },
        {
            port = 8080
            order = 10000
            forward = {
                target_groups = {
                    "alb-target-8081" = {
                        weight = 70
                    }
                    "alb-target-8082" = {
                        weight = 30
                    }
                }
                stickiness = 60
            }  
        },
        {
            port = 8081
            order = 10000
            forward = {
                target_groups = {
                    "alb-target-8081" = {
                        weight = 100
                    }
                }
                stickiness = 60
            }  
        },
        {
            port = 8082
            order = 10000
            forward = {
                target_groups = {
                    "alb-target-8082" = {
                        weight = 100
                    }
                }
                stickiness = 60
            }  
        },
        {
            port = 3306
            action_type = "fixed-response"
            fixed_response = {
                content_type = "text/plain"
                message_body = "Forbidden Request"
                status_code  = "403"
            }
        }            
    ]
}

listener_rules = [
    {
        listener_protocol = "HTTP"
        listener_port = 8080
        priority = 100

        actions = {
            forward = {
                target_group = "alb-target-8083"
            }
        }
        conditions = {
            http_request_method = ["GET"]
            path_pattern = ["/images", "/videos"]
        }
    },
    {
        listener_protocol = "HTTP"
        listener_port = 8080
        priority = 200

        actions = {
            weighted_forward = {
                target_groups = {
                    "alb-target-8084" = {
                        weight = 70
                    }
                    "alb-target-8085" = {
                        weight = 30
                    }
                }
                stickiness = 60
            },
        }
        conditions = {
            query_string = [
                {
                    key = "location"
                    value = "asia"
                },
            ]
        }
    }
]

default_tags = {
    "CostCenter" = "1234"
}