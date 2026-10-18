# Why Use A Load Balancer?

A **Load Balancer** does much more than just split traffic — it helps make applications **scalable, highly available, and resilient**.
- **Distributes traffic** across multiple backend instances so one server does not become overloaded.
- Provides a **single DNS endpoint**, so users do not need to know individual EC2 IP addresses.
- Performs **health checks** and stops sending traffic to unhealthy instances.
- Supports **failover** by redirecting requests to healthy instances automatically.
- Can handle **HTTPS/SSL termination**, so encryption/decryption happens at the load balancer instead of every backend server.
    - **HTTPS/SSL termination** = means the load balancer handles the HTTPS certificate and decrypts incoming traffic before forwarding it to backend servers.
- Supports **sticky sessions**, keeping a user connected to the same backend instance when required using cookies.
- Can spread traffic across **multiple Availability Zones** for high availability.
- Can help separate **public-facing traffic** from **internal/private traffic**.

### Simple Flow
```text
Users
  ↓
Load Balancer
  ↓
┌─────────┬─────────┬─────────┐
EC2 #1    EC2 #2    EC2 #3
Healthy   Healthy   Failed ❌
```
The load balancer detects the failed instance and continues routing users only to the healthy ones.

**Key idea**: a load balancer improves **performance, reliability, security, and availability** while giving users one consistent entry point to the application.