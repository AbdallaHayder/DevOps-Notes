# Auto Scaling Group Activities

When creating an **Auto Scaling Group (ASG)**, AWS uses a **Launch Template** to define how new EC2 instances should be created.

Launch Templates have replaced the older **Launch Configurations** and help make sure every new instance uses a consistent setup.

A Launch Template can include:
- **AMI** — the preconfigured image used to launch each instance.
- **Instance type** — defines the CPU, memory, and overall power of the EC2 instance.
- **User Data** — optional startup scripts that can install packages or configure software automatically.
- **EBS volumes** — storage attached to the instances.
- **Security Groups** — control inbound and outbound traffic.
- **SSH key pair** — allows secure SSH access to the instances.
- **IAM role** — gives EC2 permission to access other AWS services without storing access keys.
- **Network/Subnet configuration** — defines where the instances should be launched.
- **Load Balancer integration** — new instances can automatically be registered with the load balancer.

### ASG Settings
The Auto Scaling Group itself also includes settings such as:
- **Minimum capacity** — lowest number of instances allowed.
- **Maximum capacity** — highest number of instances allowed.
- **Desired/initial capacity** — number of instances the ASG initially tries to maintain.
- **Scaling policies** — rules that determine when the ASG should scale in or out.

### Key Idea
```text
Launch Template
   ↓
Defines HOW instances are created

Auto Scaling Group
   ↓
Defines HOW MANY instances should run
and WHEN to add/remove them
```
Together, they keep your EC2 fleet **consistent, scalable, and automatically managed**.