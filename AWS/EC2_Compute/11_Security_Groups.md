# Security Groups — Inbound & Outbound Traffic

A **Security Group (SG)** acts like a virtual firewall attached to an EC2 instance. It filters traffic based mainly on **IP addresses and ports**.

- **Inbound rules** control traffic coming **into** the instance.
    - Example: allow **SSH on port 22** only from your own trusted IP.
    - If another computer with an unapproved IP tries to connect on port 22, the Security Group blocks it.

- **Outbound rules** control traffic leaving **from** the instance.
    - By default, Security Groups usually allow all outbound traffic,
    - This lets the EC2 instance reach the internet for things like updates, package download, or external APIs.
    - Outbound access can also be restricted to only the destinations and ports actually needed.

### Key Idea
Security Groups decide:
```text
who can connect?
→ Based on IP / source

How can they conect?
→ Based on port/ protocol
```
For example:
```text
Your IP → Port 22 → Allowed → SSH works
Other IP → Port 22 → Blocked
EC2 → Internet → Allowed by outbound rule
```

The main goal is to keep the EC2 instance **locked down and only allow the traffic that is actually required**>