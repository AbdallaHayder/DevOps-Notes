# VPC - Subnet (IPv4)

A **subnet** is a smaller network inside a VPC.

Subnets help you:
- organize resources
- separate public and private resources
- spread resources across different Availability Zones for better availability

A subnet can be public or private depending on how its routing is configured.

### AWS reserves 5 IPs per subnet
AWS does not let your resources use the **first 4 IPs and the last IP** in each subnet.

For example:
```text
10.0.0.0/24
```
has 256 total IPs, but AWS reserves:

```text
10.0.0.0   → network address
10.0.0.1   → VPC router
10.0.0.2   → Amazon-provided DNS
10.0.0.3   → reserved for future AWS use
10.0.0.255 → reserved; AWS does not support broadcast
```
So:

```text
256 total - 5 reserved = 251 usable IPs
```

### Why subnet size matters
A `/27` gives:

```text
32 total IPs
32 - 5 = 27 usable
```

So if you need **29 instances**, `/27` is too small.
You would need something larger, such as:
```text
/26 → 64 total IPs
64 - 5 = 59 usable
```
### Key Idea
Subnet CIDR size determines how many resources can receive IP addresses, but always remember AWS reserves 5 addresses in every subnet.