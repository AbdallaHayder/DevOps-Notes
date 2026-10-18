# When to use Elastic IPs

**Elastic IPs (EIPs)** give you a fixed public IP that can be moved between EC2 instances.
- They can be useful for **failover**, where you quickly remap the same public IP from a failed instance to a healthy one.
- AWS limits how many Elastic IPs you can have by default (**5 is the limit**), though the limit can be increased.
- In modern cloud architectures, Elastic IPs are usually **not the preferred solution** unless a fixed public IP is genuinely required.

Better alternatives are often:
- **DNS** — lets users connect through a stable domain name even if the underlying IP changes.
- **Load Balancers** — provide a more scalable and reliable way to distribute trafic across multiple instances.

### Key Idea
```text
Need a fixed IP for a specific reason?
→ Elastic IP can help

Building a scalable modern application?
→ Prefer DNS + Load Balancer
```

Elastic IPs are useful in some cases, but relying on many of them can be a sign that the architecture could be improved.