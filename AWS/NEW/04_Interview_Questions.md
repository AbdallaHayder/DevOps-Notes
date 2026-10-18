#  Possible Networking Interview Questions

The lecture emphasizes understanding **how networking components work together**, so you can explain an architecture rather than only define its parts.

Two main interview themes:
### 1. Building a VPC and providing internet connectivity
Be able to explain the VPC’s IP range, subnets, route tables, gateways, and security rules.
For the standard IPv4 designs you studied:
- **Public EC2**: needs a public IPv4 address, a subnet route to an **Internet Gateway**, and security rules allowing the required traffic.
- **Private EC2 needing outbound internet**: sends traffic through a **public NAT Gateway**, which reaches the internet through an Internet Gateway. Replies can return; internet users cannot initiate connections through that NAT.

The components you need depend on the application. Every VPC does not automatically need both public and private subnets or a NAT Gateway.
### 2. Stateful versus stateless filtering
| | Security Group | Network ACL |
|---|---|---|
| Applies to | Resource network interfaces—often described as instance-level | Subnet |
| Behavior | **Stateful:** tracks connections | **Stateless:** evaluates traffic independently |
| Reply traffic | Automatically allowed for an allowed connection | Needs rules permitting the return direction |
| Rules | Allow rules | Allow and deny rules |

For example, allowing an incoming HTTPS connection in a security group automatically permits its reply. A NACL must also allow the reply traffic through its outbound rules.

**Terminology correction**: security groups and NACLs are AWS examples of stateful and stateless filtering; those terms describe broader networking concepts.