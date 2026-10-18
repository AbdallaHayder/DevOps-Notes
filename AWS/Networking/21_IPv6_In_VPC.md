# IPv6 in VPC

When IPv6 is enabled in a VPC, it can run **alongside IPv4**. This is called **dual-stack mode**.
- IPv4 remains active even when IPv6 is enabled.
- Resources can use both **IPv4 and IPv6** at the same time.
- An EC2 instance can have:
  - a **private IPv4** address for VPC/internal communication
  - a **publicly routable IPv6** address

### Internet Access
The **Internet Gateway supports both IPv4 and IPv6**, so an instance can communicate with clients/services using either protocol.

### Why Dual Stack Is Useful
Dual stack helps companies transition gradually to IPv6 without breaking existing IPv4 systems.

It provides compatibility with:
- older IPv4-only clients/services
- newer IPv6-capable clients/services

### Key Idea
**Dual stack = IPv4 + IPv6 together**

It lets your AWS environment adopt IPv6 while still keeping full IPv4 compatibility.