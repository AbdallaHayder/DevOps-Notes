# VPC in AWS

A **VPC (Virtual Private Cloud)** is your own isolated private network inside an AWS Region. You control its IP range, subnets, routing, and how resources communicate.
- You can have **multiple VPCs per Region**.
- AWS allows **5 VPCs per Region by default**, but this is a soft quota that can be increased.
- A VPC IPv4 CIDR can typically range from:
  - **/28** → 16 IP addresses
  - **/16** → 65,536 IP addresses

### Private IP Ranges
VPCs normally use private IPv4 address ranges such as:
```text
10.0.0.0/8 → Big networks
172.16.0.0/12 → AWS private networks
192.168.0.0/16 → Home networks
```
AWS default VPCs commonly use ranges such as:

```text
172.31.0.0/16
```

### Avoid Overlapping CIDRs
Your VPC CIDR should not overlap with networks it may need to communicate with.

For example:

```text
VPC A        → 10.0.0.0/16
VPC B        → 10.0.0.0/16   ❌ overlap
```
Overlapping IP ranges can cause routing problems when connecting VPCs, corporate networks, VPNs, etc.

### Key Idea
**VPC = your private AWS network, and the CIDR defines how much private IP space that network has**.