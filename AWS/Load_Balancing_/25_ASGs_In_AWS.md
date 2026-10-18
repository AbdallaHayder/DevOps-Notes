# Auto Scaling Group in AWS

An **Auto Scaling Group (ASG)** manages EC2 instances based on three main capacity settings:
- **Minimum Capacity** — the lowest number of instances that must always be running.
- **Desired Capacity** — the normal target number of instances the ASG tries to maintain.
- **Maximum Capacity** — the highest number of instances the ASG is allowed to scale up to.

### How scaling works
When traffic increases:
```text
Demand rises
   ↓
ASG scales out
   ↓
More EC2 instances are launched
   ↓
Can scale up to Maximum Capacity
```
This allows your application to handle busy periods while reducing unnecessary cost during quieter periods.

### Key Idea
ASG automatically adjusts the number of EC2 instances between your minimum and maximum limits, while trying to maintain the desired capacity for normal traffic.