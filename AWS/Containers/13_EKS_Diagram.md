# Amazon EKS - Diagram

A typical **Amazon EKS architecture** runs Kubernetes workloads inside a **VPC** across multiple **Availability Zones (AZs)** for security, fault tolerance, and high availability.

- **EKS Worker Nodes**
  - Usually EC2 instances that run Kubernetes workloads.
  - These nodes host **Pods**, which are the smallest deployable units in Kubernetes.
  - Nodes can be managed by an **Auto Scaling Group (ASG)** so capacity can increase or decrease with demand.
- **Pods**
  - Run inside the worker nodes.
  - A pod contains one or more containers that perform application tasks.
- **VPC**
  - Provides the private AWS network where the EKS components communicate securely.
- **Private Subnets**
  - Worker nodes are commonly placed in private subnets so they are not directly exposed to the internet.
- **Multiple AZs**
  - Spreading nodes across several AZs improves **high availability and fault tolerance**.
  - If one AZ fails, workloads can continue running in the others.
- **Load Balancer**
  - Distributes incoming user traffic across healthy application targets in the EKS environment.
- **NAT Gateway**
  - Allows nodes in private subnets to make outbound internet connections, such as pulling container images or downloading updates, without exposing them directly to inbound internet traffic.

### Simple Architecture
```text
Users
  ↓
Load Balancer
  ↓
VPC
├── AZ 1
│   └── Private Subnet
│       └── EKS Worker Node
│           └── Pods / Containers
│
├── AZ 2
│   └── Private Subnet
│       └── EKS Worker Node
│           └── Pods / Containers
│
└── NAT Gateway(s)
    → outbound internet access
```
**Key idea**: EKS combines Kubernetes worker nodes, private networking, load balancing, Auto Scaling, and multiple AZs to create a **scalable, secure, and highly available container platform on AWS**.