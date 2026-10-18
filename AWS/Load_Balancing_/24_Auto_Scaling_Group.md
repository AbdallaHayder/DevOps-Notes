# What is an Auto Scaling Group?

An **Auto Scaling Group (ASG)** automatically adjusts the number of EC2 instances running based on demand.
- When traffic increases, it **scales out** by adding more instances.
- When traffic decreases, it **scales in** by removing unnecessary instances.
- This helps maintain performance while avoiding paying for extra resources you don’t need.

You can define:
```text
Minimum instances → always running
Desired instances → normal target
Maximum instances → scaling limit
```
ASGs can also:
- automatically register new instances with a **load balancer**
- replace instances that become **unhealthy or terminated**
- help keep your application available without manual intervention

### Simple Flow
```text
Traffic increases
      ↓
ASG launches more EC2s
      ↓
Load Balancer starts using them

Traffic decreases
      ↓
ASG removes extra EC2s
```
### Key idea:
ASG automatically manages the size and health of your EC2 fleet so your application can handle changing traffic efficiently.

The **ASG service itself is free** — you pay for the AWS resources it creates and manages, such as the EC2 instances.