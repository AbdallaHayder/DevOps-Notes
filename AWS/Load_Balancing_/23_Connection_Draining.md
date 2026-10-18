# Connection Draining

When a backend instance is being removed from a load balancer, AWS avoids immediately cutting off users who are already connected.

For:
- **Classic Load Balancer (CLB)** → called **Connection Draining**
- **ALB / NLB** → called **Deregistration Delay**

### How it works
When an instance is being removed:
```text
New requests
   ✖ no longer sent to instance

Existing requests
   ✔ allowed to finish
```
Example:
```text
User request → EC2 #2
                ↓
EC2 #2 starts deregistering

ALB stops sending NEW traffic to EC2 #2
but lets the current request finish
```
This is useful when:
- an instance becomes unhealthy
- Auto Scaling is scaling down
- you are manually removing an instance

### Deregistration Delay
You can configure how long AWS waits for existing requests to finish:
- Range: **1–3600** seconds
- Default: **300 seconds (5 minutes)**
- Can be set lower for short requests
- Can be set to **0** if you want immediate removal

### Key Idea
**Deregistration delay lets existing requests finish gracefully while preventing new traffic from being sent to an instance that is being removed**.

This helps avoid interrupted requests and improves user experience during scaling or maintenance.