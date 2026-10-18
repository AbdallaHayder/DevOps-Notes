# NAT Gateway

A **NAT Gateway (Network Address Translation Gateway)** is an AWS-managed service that lets resources in a **private subnet access the internet outbound** without allowing the internet to directly initiate connections back to them.

Typical uses include:
- downloading updates/packages
- calling external APIs
- reaching other internet services

### How it fits into the network
A common setup is:
```text
Private EC2
   ↓
Private subnet route table
   ↓
NAT Gateway
(in a public subnet)
   ↓
Internet Gateway
   ↓
Internet
```

### Important Points
- Fully managed by AWS — no patching or server maintenance.
- Scales automatically to handle more traffic.
- Requires an **Internet Gateway** to reach the internet.
- Uses an **Elastic IP**.
- NAT Gateways are **Availability Zone-specific**; for multi-AZ redundancy, you can deploy one per AZ.
- NAT Gateways **do not use Security Groups**.
- You are charged for the time the NAT Gateway exists **and** for data processed through it.

### Key Idea
**NAT Gateway = lets private resources go OUT to the internet without making them directly reachable FROM the internet**.

⚠️ **For your AWS lab**: NAT Gateway is one of the resources I want you to remember to **delete when you finish using it**, because it can keep generating charges while it exists.