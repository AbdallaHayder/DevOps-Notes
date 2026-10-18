# Route 53 - Routing Policies

A **routing policy determines which destination Route 53 returns in a DNS answer**. Route 53 doesn’t forward the website request itself—the browser connects to the returned destination.

You can use **one name, such as `example.com`, with multiple application destinations**. Servers A and B below mean **your application servers**, not Route 53’s DNS servers.

| Policy | What it does | Example |
|---|---|---|
| **Simple** | Returns the configured value or values without special selection rules. | Your website has one server, so return its IP. |
| **Weighted** | Selects answers according to relative weights. | Give A weight **70** and B weight **30** to send more clients toward A—for example, during a gradual deployment. |
| **Failover** | Uses a primary destination and a backup, with health detection configured. | Return A normally; return healthy B if A fails. |
| **Latency-based** | Chooses among configured AWS Regions using network-latency data. | Select between your European and US deployments to reduce network delay. |
| **Geolocation** | Uses explicit rules based on the query’s inferred geographic origin. | European users get your European endpoint; US users get your US endpoint. |
| **Multivalue answer** | Returns up to eight records, with optional health checks to filter destinations. | Return several application IPs so clients can choose an address. |
| **Geoproximity** | Uses user/resource geography, with adjustable **bias** to shift the selection boundaries. | Expand the area served by one deployment so it receives more users. |

**Important qualifications to the lecture**:
- **Simple can return multiple IP addresses**, not only one.
- **70/30 weights do not guarantee exactly 70/30 website traffic**. They influence DNS-answer selection; cached answers and different user activity affect actual traffic.
- **Failover isn’t instant**: health detection and cached DNS answers can delay switching.
- **Latency routing doesn’t test which application server is processing requests fastest**. It uses network latency.
- **Multivalue is not a full replacement for a load balancer**: it supplies addresses rather than handling individual application connections.

AWS also supports **IP-based routing**, which the lecture doesn’t cover.