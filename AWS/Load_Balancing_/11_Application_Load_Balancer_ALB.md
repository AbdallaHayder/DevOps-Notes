# Application Load Balancer (ALB)

An **Application Load Balancer (ALB)** is an AWS load balancer that operates at **Layer 7 — the Application Layer**, mainly handling **HTTP and HTTPS traffic**.
Because it works at Layer 7, an ALB can inspect details inside the request, such as:
- **URL paths**
- **Headers**
- **Cookies**
- **Query strings**

This makes it more intelligent than a basic load balancer because it can route traffic based on the actual content of the request.

An ALB can distribute traffic to:
- multiple applications running on different EC2 instances
- multiple applications running on the same instance
- container-based applications, such as those running with ECS
ALBs also support **HTTP/2** and **WebSockets**:
    - **HTTP/2** improves efficiency and performance for web traffic
    - **WebSockets** support real-time, two-way communication, useful for things like chat apps, live dashboards, and instant updates

### Key Idea

**ALB = a Layer 7 load balancer that understands HTTP/HTTPS traffic and can route requests intelligently based on application-level information**.