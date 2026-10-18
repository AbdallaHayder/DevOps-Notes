# IPv6 Routing architecture

A dual-stack VPC supports **IPv4 and IPv6 simultaneously**. In this architecture, each subnet has address ranges for both protocols.

### Public subnet
Instances have a private IPv4 plus a public IPv4/Elastic IP, and a globally routable IPv6 address. Both internet paths use the **Internet Gateway**.

### Private subnet
Instances use separate gateways for outbound internet access:
- **IPv4 → NAT Gateway**: translates private IPv4 traffic so it can reach the internet through the IGW.
- **IPv6 → Egress-Only Internet Gateway**: allows outbound connections and their replies, while preventing internet-initiated connections. It does **not** translate IPv6 addresses.

| Destination | Public subnet target | Private subnet target |
|---|---|---|
| VPC’s IPv4 and IPv6 ranges | `local` | `local` |
| `0.0.0.0/0` — default IPv4 | Internet Gateway | NAT Gateway |
| `::/0` — default IPv6 | Internet Gateway | Egress-Only IGW |

Internal traffic uses the more-specific local routes. The default routes handle destinations without a more-specific match.

### Corrections to the lecture:
- Its early statement about public-instance IPv4 using NAT Gateway is mixed up. A public instance with a public IPv4 uses the **IGW**, which maps its private and public IPv4 addresses.
- “Private IPv6” is misleading here: the workload uses a globally routable IPv6 address, with outbound-only access enforced by the egress-only gateway.