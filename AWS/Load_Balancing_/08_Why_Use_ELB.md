# Why use an Elastic Load Balancer

An **Elastic Load Balancer (ELB)** is AWS’s **managed load-balancing service**, which means AWS handles the underlying infrastructure, maintenance, scaling, and availability for you.
- **Fully managed** — AWS handles upgrades, maintenance, fault tolerance, and high availability.
- **Less operational work** — compared with self-managed tools like **Nginx, HAProxy, or Traefik**, you don’t have to maintain the load balancer yourself.
- **Works with EC2 and Auto Scaling Groups** — new instances can automatically receive traffic as they are added.
- **Integrates with AWS Certificate Manager (ACM)** for HTTPS certificates and SSL/TLS termination.
- **Integrates with CloudWatch** for monitoring health and performance.
- Works well with other AWS services such as **Route 53, WAF, and Global Accelerator**.

### Managed vs Self-Managed
```text
Self-managed load balancer
→ More control
→ Possibly cheaper
→ You manage updates, scaling, monitoring and failures

AWS ELB
→ Less maintenance
→ AWS handles availability and scaling
→ Deep AWS integration
```
**Key idea**: use ELB when you want a reliable, scalable, low-maintenance load balancer that integrates naturally with the AWS ecosystem.