# Understanding CIDR - Subnet Mask

A **CIDR** prefix controls how many IP addresses are available in a range.

As the prefix gets **smaller**, the number of available IPs gets **larger**:
```text
/32 → 1 IP
/31 → 2 IPs
/30 → 4 IPs
/29 → 8 IPs
```
Each time you decrease the prefix by 1, the number of IPs doubles.

Common AWS examples:
```text
/24 → 256 IPs
/16 → 65,536 IPs
```
### Octet Shortcut
For IPv4:
```text
/8  → last 3 octets can change
/16 → last 2 octets can change
/24 → last 1 octet can change
/32 → nothing changes → 1 IP
```
Example:
```text
192.168.0.0/24
```
means the first three octets are fixed, while the last octet can vary.

### Why this matters in AWS
CIDR ranges are important when designing:
- VPCs
- public subnets
- private subnets
- IP address allocation

### Key idea:
The **subnet mask/CIDR prefix** determines how large your network range is and how many IP addresses it contains.