# Security Groups Deeper Dive

Security Groups control **what network traffic can enter and leave an EC2 instance**.

They regulate:
- **Ports** — only open the ports your application actually needs, e.g. **80 for HTTP** or **22 for SSH**.
- **IP ranges** — you can restrict access to specific IPv4/IPv6 addresses for ranges.
- **Inbound rules** — control traffic coming **into** the instance.
- **Outbound rules** — control traffic leaving **from** the isntance.
- **Custom rules** — you can allow specific TCP ports used by your application.

Example:
```text
HTTP | TCP | 80 | 0.0.0.0/0
```
means HTTP is open to the internet.

```text
SSH | TCP | 22 | 122.149.196.85/32
```

means SSH is allowed only from that single IP address.

**Best practice**: keep Security Group rules as restrictive as possible — only open required ports and only to trusted sources.