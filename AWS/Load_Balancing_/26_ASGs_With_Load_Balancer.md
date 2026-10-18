# Auto Scaling Group in AWS with Load Balancer

An **Auto Scaling Group (ASG)** and **Application Load Balancer (ALB)** work together to create a system that is both **scalable** and **highly available**.
- **Users** send traffic to the application.
- The **ALB** distributes that traffic across the available EC2 instances so no single instance gets overloaded.
- The **ALB** also performs **health checks** and stops sending traffic to unhealthy instances.
- The **ASG** adjusts the number of EC2 instances based on demand:
  - high traffic → **scale out** by launching more instances
  - low traffic → **scale in** by removing unnecessary instances

If an instance fails, the ALB stops routing traffic to it, while the ASG can replace it with a new healthy instance.

### Using an AMI
The ASG can launch new instances from a preconfigured **Amazon Machine Image (AMI)**.

That means each new instance can already contain the required:
- operating system
- software
- application setup
- configuration

### Simple Architecture
```text
Users
  ↓
ALB
  ↓
EC2 instances
  ↑
ASG adds/removes/replaces instances
  ↑
AMI used to launch consistent new instances
```
### Key idea:
The ALB handles **traffic distribution and health checks**, while the ASG handles **instance scaling and replacement**. Together, they form a common production architecture for reliable and scalable applications.