# AMI (Amazon Machine Image) Overview

An **AMI (Amazon Machine Image)** is a **template or blueprint used to launch EC2 instances**.

It can include thigns like:
- The **operating system**.
- Installed **software**.
- Configuration settings.
- Monitoring or other tools.

Instead of manually configuring every new EC2 instance, you can launch it from an AMI so it starts with the same setup each time.

### Types of AMIs
- **Public AMIs** — prodvided by AWS or others, e.g. Ubuntu or Amazon Linux.
- **Custom AMIs** — created from your own configured EC2 instance.
- **Marketplace AMIs** — pre-built images from third-party vendors.

### Why AMIs are useful
AMIs help you:
- launch identical EC2 instances quickly
- keep environments consistent
- reduce manual setup and human error
- scale infrastructure more easily
- copy setups across Regions when needed.

### Simple Mental Model
```text
AMI = Template
EC2 Instance = Running server created from that template
```

Example:
```text
Custom AMI
├── Ubuntu
├── Nginx
├── Application dependencies
└── Monitoring agent
        ↓
Launch 5 EC2 instances
        ↓
All 5 start with the same setup
```
