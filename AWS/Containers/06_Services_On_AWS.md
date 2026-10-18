# Container - related Service on AWS

AWS provides several services for running and managing containers:
- **Amazon ECS (Elastic Container Service)**

  AWS’s own managed container orchestration service. You define which container images to run, how many containers you need, and how they should work together.

- **Amazon EKS (Elastic Kubernetes Service)**

  AWS’s managed Kubernetes service. You get Kubernetes features while AWS manages the Kubernetes control plane for you.

- **AWS Fargate**

  A **serverless compute option for containers** that works with ECS and EKS. You don’t manage EC2 instances; you define the container workload and AWS provides the infrastructure.

- **Amazon ECR (Elastic Container Registry)**

  AWS’s container image registry. It stores and manages Docker/container images and integrates closely with AWS services.

### Key Idea
```text
ECR     → stores container images
ECS     → runs/orchestrates containers
EKS     → runs containers using Kubernetes
Fargate → runs containers without managing servers
```
So the simplest way to remember it is:

**ECR stores, ECS/EKS orchestrate, Fargate removes the server-management part**.