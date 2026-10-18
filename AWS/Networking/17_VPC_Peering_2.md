# VPC Peering - Good to know

VPC Peering is not limited to VPCs in the same AWS account or even the same Region.
- You can peer VPCs across **different AWS accounts**.
- You can also peer VPCs across **different AWS Regions**.
- This is useful for larger organizations where teams or environments are separated but still need private communication.

### Cross-Account Security Group References
According to the lecture, you can reference a Security Group from a peered VPC in another AWS account **as long as both VPCs are in the same Region**.

This lets you allow traffic based on the **Security Group itself** instead of hard-coding IP addresses.

Example:
- Dev account has one VPC
- Prod account has another VPC
- The VPCs are peered
- Prod can allow traffic only from a specific Dev Security Group
This gives more flexible and controlled access between environments.

### Common Use Case
A company may separate:
- **Development**
- **Production**

into different AWS accounts and VPCs for isolation.

VPC Peering allows selected resources between them to communicate privately, while Security Group references help restrict that communication to only the required resources.

### Key Idea
VPC Peering can connect VPCs across accounts and Regions, and in same-Region peering you can use Security Group references to control access more dynamically instead of relying only on IP addresses.