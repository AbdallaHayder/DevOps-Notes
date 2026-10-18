# Network Load Balancer - TCP (Layer 4)

A **Network Load Balancer (NLB)** works at **Layer 4 of the OSI model**, the **Transport Layer**, where protocols such as **TCP and UDP** operate.

Unlike an ALB, an NLB does **not inspect application-level details** such as URLs, HTTP headers, or cookies. It focuses on forwarding network traffic quickly and efficiently.

- Routes traffic based on things like **protocol and port**
- Can forward **TCP or UDP traffic** to different target groups
- Works well for applications where **speed, low latency, and raw network performance** are important
- Suitable for use cases such as:
  - gaming servers
  - streaming
  - real-time applications
  - high-throughput network services

Even HTTP traffic can technically pass through an NLB because HTTP runs over TCP, but the NLB treats it simply as TCP traffic and does not understand the HTTP content.
### NLB vs ALB
```text
NLB
→ Layer 4
→ TCP / UDP
→ Routes by port/protocol
→ Does not inspect HTTP details
→ Optimized for speed and low latency

ALB
→ Layer 7
→ HTTP / HTTPS
→ Understands paths, headers, cookies, etc.
→ Better for intelligent web routing
```
If you need advanced HTTP routing or Layer 7 features, an **ALB** is usually more appropriate. If you need **raw TCP/UDP performance and very low latency**, an **NLB** is the better fit.

### Key idea:
The NLB acts more like a **fast traffic forwarder** than an intelligent HTTP router.