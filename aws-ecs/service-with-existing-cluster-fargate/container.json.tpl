[
    {
      "dnsSearchDomains": null,
      "environmentFiles": null,
      "logConfiguration": {
        "logDriver": "awslogs",
        "secretOptions": null,
        "options": {
          "awslogs-group": "/ecs/arjstack-dev/svc-currency-service",
          "awslogs-region": "ap-south-1",
          "awslogs-stream-prefix": "ecs1"
        }
      },
      "entryPoint": null,
      "portMappings": [
        {
          "hostPort": 8081,
          "protocol": "tcp",
          "containerPort": 8081
        },
        {
          "hostPort": 8082,
          "protocol": "tcp",
          "containerPort": 8082
        }
      ],
      "command": null,
      "linuxParameters": null,
      "cpu": 256,
      "environment": [],
      "resourceRequirements": null,
      "ulimits": null,
      "dnsServers": null,
      "mountPoints": [],
      "workingDirectory": null,
      "secrets": null,
      "dockerSecurityOptions": null,
      "memory": 512,
      "memoryReservation": null,
      "volumesFrom": [],
      "stopTimeout": null,
      "image": "currency-service",
      "startTimeout": null,
      "firelensConfiguration": null,
      "dependsOn": null,
      "disableNetworking": null,
      "interactive": null,
      "healthCheck": null,
      "essential": true,
      "links": null,
      "hostname": null,
      "extraHosts": null,
      "pseudoTerminal": null,
      "user": null,
      "readonlyRootFilesystem": null,
      "dockerLabels": null,
      "systemControls": null,
      "privileged": null,
      "name": "currency-container"
    }
  ]