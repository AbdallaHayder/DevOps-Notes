# IPv6 Routing

Dual stack means the VPC, subnets, and instances support **both IPv4 and IPv6**. Each protocol has its own addresses and routing rules.

In the lecture’s public subnet, EC2 has a private IPv4, an Elastic IP, and a globally routable IPv6 address. Internet connectivity also requires suitable routes and security rules.

The intended routing configuration is:
| Traffic | Public subnet | Private subnet with outbound-only access |
|---|---|---|
| IPv4: `0.0.0.0/0` | Internet Gateway | Public NAT Gateway |
| IPv6: `::/0` | Internet Gateway | **Egress-Only Internet Gateway** |

Both subnet route tables also have **local routes** for communication within the VPC.

**Important correction to the lecture**: It routes the private subnet’s IPv6 traffic through a regular Internet Gateway. That provides direct IPv6 internet routing; it does **not** enforce outbound-only access. For that behavior, use the **Egress-Only Internet Gateway** from lesson 129. It permits outbound connections and their replies while preventing internet-initiated connections.

**Why the gateways differ**: Private IPv4 instances need address translation in this design, so they use NAT. Native IPv6 internet traffic needs no translation. The egress-only gateway controls connection direction instead.

For example, a private application server downloading updates uses:
- **IPv4 destination**: NAT Gateway → Internet Gateway → internet.
- **IPv6 destination**: Egress-Only Internet Gateway → internet.

Remember: **routes choose the path; security rules control permitted traffic**. Configure IPv4 and IPv6 rules separately.