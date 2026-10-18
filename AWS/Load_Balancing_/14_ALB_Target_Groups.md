# Application Load Balancer (Target Groups)

A **Target Group** is a group of backend resources that an **Application Load Balancer (ALB)** sends traffic to.

Target groups can contain different types of targets, such as:
- **EC2 instances** — often combined with Auto Scaling Groups so instances can be added or removed automatically.
- **ECS tasks** — containers running applications or microservices.
- **Lambda functions** — the ALB can forward HTTP requests to Lambda for serverless workloads.
- **Private IP addresses** — useful when routing directly to specific internal resources.

An ALB can route traffic to **multiple target groups**, which lets one load balancer serve different parts of an application.

Example:
```text
Users
  ↓
ALB
  ├── /users  → User Target Group
  └── /search → Search Target Group
```
Each target group can scale independently and usually represents a specific service or application component.

### Health Checks
Health checks are performed at the **target group level**. The ALB continuously checks each target and stops routing traffic to any unhealthy resource until it recovers.

### Key idea:
A target group is basically the **destination pool behind the ALB** — the ALB receives requests, applies routing rules, then forwards each request to a healthy target in the correct group.