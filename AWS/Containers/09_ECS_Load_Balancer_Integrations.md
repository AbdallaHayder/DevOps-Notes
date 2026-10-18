# Amazon ECS - Load Balancer Integrations

ECS can work with different AWS load balancers depending on the type of traffic and application.
- **Application Load Balancer (ALB)**
  - Usually the best choice for most ECS workloads.
  - Works at **Layer 7** with HTTP/HTTPS.
  - Supports **path-based routing**, so different requests can go to different ECS services or containers.
  - Example:
    ```text
    /api      → API containers
    /frontend → Frontend containers
    ```
  - Ideal for web apps and microservices

- **Network Load Balancer (NLB)**
  - Works at **Layer 4** with TCP/UDP.
  - Designed for **high throughput and low latency**.
  - Useful for gaming, real-time systems, or integrations such as AWS PrivateLink.
  - Does not provide advanced HTTP routing like ALB.
- **Classic Load Balancer (CLB)**
  - Older and more limited.
  - Mainly used for legacy systems.
  - Lacks many modern ALB/NLB features and does not support Fargate.
### Key Idea
```text
ALB → HTTP/HTTPS, microservices, path-based routing
NLB → TCP/UDP, high performance, low latency
CLB → legacy workloads
```
For most modern ECS applications, **ALB is the default choice unless you specifically need NLB-level network performance**.