# Why AWS Lambda

Both **EC2** and **Lambda** run application code, but they work differently.

**EC2**
- Runs as a **virtual machine**.
- You choose the CPU, memory, and instance type.
- You manage the server and its configuration.
- You pay while the instance is running, even if it is idle.
- Scaling requires manual changes or an Auto Scaling Group.

**AWS Lambda**
- **No servers to manage**.
- Runs code only when triggered.
- Designed for **short, event-driven tasks**.
- Maximum execution time is **15 minutes**.
- Automatically scales based on the number of requests/events.
- You pay mainly for the compute used while the function runs.
```text
EC2
→ Server always running
→ You manage infrastructure
→ Pay while running

Lambda
→ Runs only when triggered
→ AWS manages infrastructure
→ Automatic scaling
→ Pay for execution
```
**Key idea**: use **EC2** when you need long-running servers and more infrastructure control; use **Lambda** for short, event-driven workloads where you want AWS to handle the servers and scaling.