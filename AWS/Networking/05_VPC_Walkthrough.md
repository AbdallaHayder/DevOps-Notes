# Default VPC Walkthrough

AWS automatically creates a **default VPC** in each Region so you can start launching resources quickly without building a network from scratch.

If you launch an EC2 instance without choosing a custom VPC or subnet, AWS can place it in the **default VPC**.

### What the Default VPC Gives You
- **Internet connectivity** is already set up.
- EC2 instances can receive a **public IPv4 address** automatically.
- Instances also get:
  - a **private IPv4 address**
  - public and private DNS names

That is why, in earlier EC2 labs, you could launch an instance and connect to it without first manually creating a VPC, subnets, and internet routing.

### Key Idea
**Default VPC = ready-made AWS network for quick starts and labs**.

For production environments, companies often create **custom VPCs** so they have more control over subnets, routing, security, and IP ranges.