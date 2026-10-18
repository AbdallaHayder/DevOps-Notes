#  High Load Traffic

A website handles a Black Friday traffic spike by combining services that do different jobs:
| Component | How it helps |
|---|---|
| **Route 53** | Answers DNS queries with the configured endpoint. Regional selection depends on your routing policy and health configuration. |
| **CloudFront** | Caches eligible images, CSS, and JavaScript near users, reducing requests reaching your backend. |
| **Load balancer** | Distributes the remaining application requests across healthy targets. |
| **Auto scaling** | Adds application capacity as demand increases and removes capacity when demand falls. |

A typical web request follows this path after DNS resolution:
```text
User → CloudFront → ALB → Application instances or containers
```
A CloudFront cache hit can be served without reaching the ALB. Optional **Lambda@Edge** functions can customize requests or responses, such as changing headers.

### Choosing the load balancer
- **ALB**: HTTP/HTTPS applications needing features such as `/api` versus `/images` routing, hostname rules, or WebSockets.
- **NLB**: transport-level requirements such as TCP/UDP traffic or static IP addresses. Choose it for those requirements rather than assuming “faster” always means better.

**Correction to the lecture’s scaling explanation**: all targets do not necessarily live inside an Auto Scaling Group.
- An **EC2 ASG** scales EC2 instances.
- **ECS Service Auto Scaling** scales application tasks, including Fargate tasks.
- **EKS** scales application pods and manages worker capacity separately.

The lecture also highlights useful interview topics:
- **Connection draining**: give existing requests time to finish when removing a target, reducing interrupted requests during scaling or deployments.
- **Scaling metrics**: examples include CPU utilization and ALB requests per target, chosen according to what limits your application’s capacity.