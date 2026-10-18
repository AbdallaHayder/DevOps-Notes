# Understanding CIDR - IPv4

**CIDR (Classless Inter-Domain Routing)** is a way to define a **range of IP addresses**.

It is written like this:
```text
192.168.0.0/26
```
The `/number` tells you how large or small the IP range is.

Examples:
```text
/32 → 1 IP address
/24 → 256 IP addresses
/26 → 64 IP addresses
/0  → all IPv4 addresses
```
That’s why in AWS you often see:
```text
0.0.0.0/0
```
which means:

allow traffic from **any IPv4 address**

CIDR has two main parts:
- **Base IP** — the starting/network address, such as `10.0.0.0`
- **Prefix length** — the `/8`, `/16`, `/24`, `/32`, etc., which defines the size of the range

### Important Rule
**Smaller CIDR number = larger IP range**

**Larger CIDR number = smaller IP range**

Example:
```text
10.0.0.0/8   → very large range
10.0.0.0/16  → smaller
10.0.0.0/24  → smaller again
10.0.0.1/32  → one specific IP
```
### Key idea
CIDR is how AWS defines IP ranges for things like **VPCs, subnets, routing, and Security Group rules**.
