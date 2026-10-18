# Amazon ECS - EC2 Launch Type

With **Amazon ECS**, you can run containers using different launch types.

### ECS with EC2
With the **EC2 launch type**, you manage the underlying EC2 instances yourself.

You are responsible for:
- provisioning the EC2 instances
- maintaining and patching them
- choosing instance types and capacity

Each EC2 instance runs the **ECS Agent**, which connects the instance to the ECS cluster.
```text
ECS
 ↓
ECS Agent
 ↓
EC2 instance
 ↓
Containers
```
ECS manages the **container lifecycle**, such as starting and stopping containers, while you manage the infrastructure.

This is useful when you want more control over the underlying servers.

### ECS with Fargate
With **Fargate**, you do not manage EC2 instances at all.

You simply define a **task definition**, including things like:
- container image
- CPU
- memory
- networking

AWS then provides the required infrastructure and runs the containers for you.
```text
Task Definition
      ↓
Fargate
      ↓
Containers run
```
To scale, you increase the number of tasks rather than adding more EC2 instances yourself.

### Key Difference
```text
ECS + EC2
→ You manage the servers
→ ECS manages the containers

ECS + Fargate
→ AWS manages the servers
→ You focus mainly on the containers
```
**Key idea**: use EC2 launch type when you want more infrastructure control; use Fargate when you want to avoid managing servers.