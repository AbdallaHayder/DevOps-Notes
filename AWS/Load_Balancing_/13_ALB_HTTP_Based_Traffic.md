# Application Load Balancer (HTTP Based Traffic)

An **Application Load Balancer (ALB)** receives incoming **HTTP/HTTPS requests** and routes them to the correct **target group** based on configured routing rules.
- **Target groups** contain the resources that actually process requests, such as **EC2 instances, ECS services/containers, or Lambda functions**.
- Different target groups can represent different parts of an application, such as:
  - `/users` → user/profile service
  - `/search` → search service
- The ALB performs **health checks** on targets and stops sending traffic to unhealthy ones.
- Because ALB understands HTTP requests, it can route based on things like **URL path, hostname, headers, or other request details**.

### Example
```text
Users
  ↓
ALB
  ├── /users  → User Target Group
  └── /search → Search Target Group
```
Each target group can scale independently, which helps keep services separated, reliable, and easier to manage.

**Key idea**: ALB acts as the smart HTTP entry point that decides which backend service should handle each request.