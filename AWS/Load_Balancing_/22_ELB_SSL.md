# Elastic Load Balancers - SSL

Different AWS load balancer types handle SSL/TLS certificates differently:
- **Classic Load Balancer (CLB)**
  - Older-generation load balancer.
  - Supports only **one SSL/TLS certificate per CLB**.
  - If you need multiple domains with different certificates, you may need multiple CLBs.
  - Less flexible and potentially more expensive to manage.
- **Application Load Balancer (ALB)**
  - Supports **multiple SSL/TLS certificates**.
  - Uses **SNI (Server Name Indication)** to choose the correct certificate based on the requested hostname.
  - Allows multiple domains to share the same load balancer.
- **Network Load Balancer (NLB)**
  - Also supports **multiple certificates with SNI**.
  - Useful when you need high-performance Layer 4 traffic while still supporting TLS encryption.

**Example**
```text
blog.example.com ── cert A ──┐
shop.example.com ── cert B ──┼──→ ALB / NLB
app.example.com  ── cert C ──┘
```
The load balancer uses **SNI** to present the correct certificate for each domain.

### Key Idea
Modern load balancers such as **ALB and NLB** provide much more flexible SSL/TLS management than the older **CLB**, especially when hosting multiple HTTPS domains on one load balancer.