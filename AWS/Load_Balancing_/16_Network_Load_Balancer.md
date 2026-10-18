# Network Load Balancer (NLB)

A **Network Load Balancer (NLB)** is designed for **very high performance, high traffic, and low latency**.

It operates at **Layer 4 of the OSI model**, so it handles traffic mainly using **TCP and UDP**, rather than inspecting HTTP requests like an ALB.

### Key Benefits
- **Very low latency** — the lecture describes it as faster than ALB and suitable where every millisecond matters.
- Can handle **millions of requests per second**, making it suitable for very high-throughput workloads.
- Good for performance-sensitive systems such as:
  - financial/trading platforms
  - gaming servers
  - VoIP
  - DNS
  - real-time communication systems

### Static IP Addresses
An NLB provides a **static IP address per Availability Zone**, which is useful when clients or external systems need a predictable IP.

You can also associate **Elastic IPs** with the NLB, allowing you to keep fixed public IP addresses even when the backend infrastructure changes.

```text
Clients
   ↓
Static NLB IP
   ↓
Network Load Balancer
   ↓
Backend servers
```
### NLB vs ALB
```text
ALB
→ Layer 7
→ HTTP / HTTPS
→ Smart routing based on URL, headers, etc.

NLB
→ Layer 4
→ TCP / UDP
→ Extremely high performance and low latency
```
**Key idea**: use an **NLB** when raw network performance, very high traffic, low latency, TCP/UDP support, or static IP addresses are more important than advanced HTTP routing features.