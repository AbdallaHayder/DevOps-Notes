# Routing Policies - Simple

Simple routing returns the DNS values you configure, without rules such as “send 70% here” or “use a backup if this server fails.”

**One value: one application destination**

Suppose your website runs on EC2 server A:
```text
example.com → 192.0.2.10
```
Route 53 returns that IP, and the browser connects to your server.

**Multiple values: several possible destinations**

You can put multiple IP addresses in the **same A record**:
```text
example.com → 192.0.2.10  (your EC2 server A)
              192.0.2.20  (your EC2 server B)
```
Route 53 returns **both addresses in random order**. The client chooses which address to try. This can spread connections across the servers, but it doesn’t guarantee equal traffic or a particular percentage. The lecture’s “client picks randomly” is a simplification; client behavior can vary.

**Two important limitations**
- **No Route 53 health-check association**: If server A fails, Simple routing can still return A’s IP. Users attempting that address may experience a failure.
- **One target per Simple alias**: You select one supported resource or compatible same-zone record. That target could be **one ALB serving many EC2 instances**—it doesn’t mean your application must have only one server.

For example:
```text
example.com → Simple alias → Your ALB → Healthy EC2 backends
```
The ALB can perform its own health checks and load balancing, even though the DNS record uses Simple routing.

**Simple routing with several IPs is still different from the separate “Multivalue Answer” policy**, which supports health checks.