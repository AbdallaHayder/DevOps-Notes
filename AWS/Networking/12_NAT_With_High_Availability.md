# NAT Gateway with High Availability

A **NAT Gateway is highly available within one Availability Zone**, but it is still tied to that specific AZ.

If you have resources in multiple AZs but they all depend on one NAT Gateway:
```text
AZ A
├── NAT Gateway
└── EC2

AZ B
└── EC2
```

and **AZ A fails**, then the NAT Gateway fails with it.

That means the EC2 instances in **AZ B may still be healthy**, but they lose outbound internet access because their only NAT Gateway is gone.

### High-Availability Design
To avoid that, create a NAT Gateway in multiple AZs:
```text
AZ A
├── NAT Gateway A
└── Private EC2

AZ B
├── NAT Gateway B
└── Private EC2
```

Each private subnet should route outbound internet traffic through the NAT Gateway in its own AZ.

### Key Idea
**One NAT Gateway = single-AZ dependency**.

**Multiple NAT Gateways across AZs = better fault tolerance and high availability**.

⚠️ For your labs, remember that every NAT Gateway can keep generating charges while it exists, so we’ll delete them when you’re done testing.