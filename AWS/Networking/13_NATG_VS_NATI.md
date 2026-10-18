# NAT Gateway vs NAT Instance

Both let resources in a **private subnet access the internet**, but they differ in how much AWS manages for you.
- **NAT Gateway**
  - Fully managed by AWS.
  - Highly available within its AZ.
  - Automatically scales to high bandwidth.
  - No OS patching or maintenance.
  - No Security Groups attached.
  - Charged per hour + data processed.
  - Cannot be used as a bastion host.
- **NAT Instance**
  - An EC2 instance configured to perform NAT.
  - You manage the OS, patches, updates, and failover.
  - Performance depends on the EC2 instance type.
  - Can use Security Groups.
  - Pricing is based on EC2 + networking costs.
  - Can also be configured as a bastion/jump host.
### Key Idea
```text
NAT Gateway
→ easier
→ managed
→ scalable
→ less maintenance

NAT Instance
→ more control
→ more manual work
→ performance depends on EC2 size
```
For most modern AWS setups, **NAT Gateway is the simpler managed option**, while NAT instances are mainly useful when you need extra control or a more custom setup.