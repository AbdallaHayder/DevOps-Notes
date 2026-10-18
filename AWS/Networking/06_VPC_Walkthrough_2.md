# Default VPC Walkthrough - Part 2

AWS creates a **default VPC** automatically so new users can launch resources without building a network from scratch. In production, it’s common to create **custom VPCs** for better control.

### Default VPC Structure
The default VPC has its own **IPv4 CIDR range**, typically large enough to provide many private IP addresses.

Example:
```text
/16 → 65,536 total IPv4 addresses
```

The VPC can contain multiple subnets, and AWS usually creates default subnets across different **Availability Zones (AZs)**.

Example:
```text
VPC
├── Subnet in AZ 1
├── Subnet in AZ 2
└── Subnet in AZ 3
```

This helps support **high availability**.

### Subnets
A subnet is a smaller network inside the larger VPC.

For example, a /20 subnet contains:
```text
4,096 total IP addresses
```

AWS reserves 5 **IP addresses per subnet**, so fewer are actually available for resources.

### Internet Gateway
The default VPC has an **Internet Gateway (IGW)** attached.

The subnet’s route table can contain a route pointing internet-bound traffic to the IGW:
```text
Subnet
   ↓
Route Table
   ↓
Internet Gateway
   ↓
Internet
```

This is what helps make the default subnets effectively public.

### Other Default Settings
- Public IPv4 addresses can be automatically assigned to EC2 instances.
- The VPC uses route tables to control traffic.
- Network ACLs (NACLs) are associated with subnets.
- VPC Flow Logs are not enabled by default.
- IPv6 may not be configured unless you add it.

### Key Idea
- **VPC = main private network**
- **Subnet = smaller section of that network**
- **Route Table = decides where traffic goes**
- **Internet Gateway = gives public-network connectivity**

The next step is learning how to build this same structure manually with a **custom VPC**.