# Application Load Balancer 2

An **Application Load Balancer (ALB)** can route traffic intelligently to different **target groups**, which may contain EC2 instances, containers, Lambda functions, or other supported targets.

Key routing features include:
- **Path-based routing** — sends traffic based on the URL path.

Example:
```text
/users    → User service
/posts    → Post service
/comments → Comments service
```
- **Host-based routing** — sends traffic based on the hostname.

Example:
```text
blog.example.com → Blog service
news.example.com → News service
```
- **Query string / header routing** — can route requests based on query parameters or request headers, useful for device-specific or customised routing.

ALBs are especially useful for **microservices and container environments**, where many services may run across different instances or ports.

They also integrate well with **ECS**, using dynamic port mapping so the ALB can find and route traffic to containers even when their ports change.

### Why ALB is useful
Instead of needing a separate load balancer for every application, one ALB can handle multiple applications through intelligent routing.
```text
Users
  ↓
ALB
  ├── /users    → User service
  ├── /posts    → Post service
  └── /comments → Comments service
```
**Key idea**: ALB lets one load balancer manage multiple applications or microservices by routing requests based on the content of the request.