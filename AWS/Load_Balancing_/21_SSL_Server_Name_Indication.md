# SSL - Server Name Indication (SNI)

**SNI (Server Name Indication)** solves the problem of serving **multiple HTTPS websites with different SSL/TLS certificates on the same server or load balancer**.

Before SNI, hosting several HTTPS websites often required a **separate IP address for each certificate**.

With **SNI**:
- Multiple SSL/TLS certificates can be loaded on the same server or load balancer.
- During the TLS handshake, the client/browser sends the **hostname** it wants to connect to.
- The server or load balancer uses that hostname to select the correct certificate.
- If no matching certificate is found, the **default certificate** is used.

**Example**
```text
blog.example.com ──┐
shop.example.com ──┼──→ ALB
app.example.com  ──┘

ALB selects the correct certificate
based on the requested hostname.
```
SNI is useful when one load balancer serves **multiple domains or websites**.

According to the lecture, SNI is supported with:
- **ALB**
- **NLB**
- **CloudFront**

but not with the older **Classic Load Balancer (CLB)**.

**Key idea**: SNI lets one server or load balancer host multiple HTTPS domains and automatically choose the right certificate for each hostname.