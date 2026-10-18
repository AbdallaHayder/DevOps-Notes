# Amazon EKS Overview

**Amazon EKS** is AWS’s managed Kubernetes service. It lets you run Kubernetes on AWS without managing the Kubernetes control plane yourself.

AWS handles things like:
- control plane management
- updates and patching
- availability and scaling of the control plane

Why Kubernetes?

Kubernetes is an **open-source container orchestration platform** used to automate:
- container deployment
- scaling
- management
- recovery of containerized applications

### EKS vs ECS
- **ECS** → AWS-native container orchestration, simpler and tightly integrated with AWS
- **EKS** → Kubernetes-based, more portable across cloud providers
Because Kubernetes is widely supported, EKS can be useful if you want more **cloud portability**.

#### Launch Options
- **EC2** → you manage the worker nodes, while AWS manages the Kubernetes control plane
- **Fargate** → AWS runs the workloads without you managing EC2 instances

### Monitoring
EKS can integrate with **CloudWatch Container Insights** to monitor:
- logs
- metrics
- performance
- cluster health

### Key Idea
**EKS = managed Kubernetes on AWS.**

Use it when you want Kubernetes features and portability without having to manage the Kubernetes control plane yourself.