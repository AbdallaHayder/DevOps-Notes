# VPC Peering

**VPC Peering** privately connects two VPCs using AWS’s internal network, so resources in both VPCs can communicate without using the public internet.
- Traffic stays on AWS’s private network.
- The two VPCs must have **non-overlapping CIDR ranges**.
- VPC peering is **non-transitive**.
- Creating the peering connection alone is not enough — you must also update the relevant **route tables** in both VPCs.

### Non-Transitive Peering
If you have:
```text
VPC A ↔ VPC B ↔ VPC C
```

VPC A **cannot** automatically communicate with VPC C.

You would need another direct peering connection:
```text
VPC A ↔ VPC C
```

### Route Tables
After creating the peering connection, each VPC needs routes that send traffic for the other VPC’s CIDR through the peering connection.

For example:
- VPC A route table → VPC B CIDR via peering
- VPC B route table → VPC A CIDR via peering

### Common Use Cases
- Connecting separate department VPCs that need to share resources.
- Connecting VPCs in different AWS accounts.
- Connecting environments such as dev and production when they need controlled private communication.

### Key Idea
**VPC Peering = private VPC-to-VPC communication over AWS’s network**.

Remember:
- no overlapping CIDRs
- update route tables
- peering is **not transitive**