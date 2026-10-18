# Amazon EKS -Node Types

EKS gives you three main ways to run your Kubernetes worker capacity:
- **Managed Node Groups**
  - AWS provisions and manages the EC2 worker nodes for you.
  - Nodes are typically managed through an Auto Scaling Group.
  - Supports **On-Demand** and **Spot** instances.
  - Good when you want EC2-based nodes with less operational work.
- **Self-Managed Nodes**
  - You create and manage the EC2 worker nodes yourself.
  - Gives you more control and customization.
  - You can use EKS-optimized AMIs or your own custom AMIs.
  - Also supports **On-Demand** and **Spot** instances.
  - More control, but more maintenance.
- **AWS Fargate**
  - Serverless option for EKS.
  - No EC2 worker nodes for you to manage.
  - You define CPU and memory requirements, and AWS handles the infrastructure.
  - Easiest operationally, though it can cost more in some cases.

### Key Idea
```text
Managed Nodes     → AWS manages EC2 nodes
Self-Managed      → You manage EC2 nodes
Fargate           → No nodes for you to manage
```
Choose based on the trade-off between **control** and **operational simplicity**.