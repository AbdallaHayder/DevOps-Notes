# Elastic IPs

Normally, an EC2 instance can receive a **new public IPv4 address after it is stopped and started**. An **Elastic IP (EIP)** solves this by giving you a **Static public IPv4 address** that staus the same until you release/delete it.
- An EIP can be attached to an EC2 instance and later **remapped to another instance** if needed.
- It is useful when external systems, firewall rules, or DNS records need a **stable IP address**.
- If you do not need a fixed public IP, avoid allocating one unnecessarily.

### Simple Example
```text
Normal EC2 public IP:
Stop → Start → IP may change

Elastic IP:
Stop → Start → Same IP remains
```

### Important current AWS pricing note
The lecture's statement that Elastic IPs are free while attached to a running instance is **outdated**. AWS now charges for **all public IPv4 addresses, including Elastic IPs whether they are in use or idle**.