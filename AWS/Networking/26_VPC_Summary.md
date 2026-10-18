# VPC Section Summary

This lecture connects the main components used to build, secure, and connect an AWS network.

| Concept | Purpose |
|---|---|
| **CIDR** | Defines an IP address range, such as `10.0.0.0/16`, for your VPC or subnet. |
| **VPC** | Your logically isolated network within an AWS Region. |
| **Subnet** | A portion of the VPC’s address space, located in **one Availability Zone**. |
| **Internet Gateway** | Provides an internet path for IPv4 and IPv6, with appropriate addresses, routes, and security rules. |
| **Route table** | Determines where traffic goes based on its destination. **Routes provide paths—not permission.** |
| **Bastion host** | A public EC2 jump server used for administrative access to private instances. |
| **NAT instance** | An EC2 instance you configure and maintain to provide NAT, including disabling source/destination checks. |
| **NAT Gateway** | AWS-managed NAT used in this architecture for private workloads’ outbound IPv4 internet access. |

### Security: NACLs versus security groups

| | NACL | Security group |
|---|---|---|
| Applies to | Subnet | Resource network interfaces |
| Connection tracking | **Stateless** | **Stateful** |
| Rules | Allow and deny | Allow |
| Reply traffic | Must be explicitly permitted | Automatically permitted for allowed connections |

The transcript’s “FM reports” likely means **ephemeral ports**: temporary client ports that NACL rules must accommodate for return traffic.

### Connecting networks and services
- **VPC peering**: Direct private connectivity between two VPCs. It is **non-transitive**: A ↔ B and B ↔ C does not create A ↔ C connectivity.
- **VPC endpoints**: Private access to supported AWS services without requiring an internet path. Network connectivity still does **not** grant IAM permissions.
- **PrivateLink**: Exposes a particular service privately to consumers. In the common application pattern, the provider uses an **NLB**, while the consumer uses an **interface endpoint with ENIs**. The lecture’s “NLB or ENIs” mixes up these two roles. Also, gateway endpoints do **not** use PrivateLink.
- **Transit Gateway**: A routing hub connecting multiple VPCs and on-premises networks. It supports transitive connectivity when attachments, routes, and security rules are configured appropriately.
- **Egress-Only Internet Gateway**: Allows outbound IPv6 connections **and their replies**, while blocking new internet-initiated connections. Unlike NAT, it does not translate IPv6 addresses.

**Current AWS clarification**: The course’s per-AZ NAT design describes **zonal NAT Gateways**. AWS also now offers **regional NAT Gateways** with automatic multi-AZ expansion.