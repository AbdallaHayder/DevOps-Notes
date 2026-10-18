# Horizontal Scalability

**Horizontal Scaling** means adding more servers/instances instead of making one server more powerful.

Example: 
```text
1 EC2 instance
   ↓
3 EC2 instances
   ↓
5 EC2 instances
```
- The workload is **distributed across multiple instances*.
- Common in modern **web applications** and **cloud systems**.
- Helps handle **traffic spikes** by adding instances when demand increases and removing them when demand drops.
- Improves **resilience**, because if one instance fails, others can continue serving users.
- AWS can automate this using **Auto Scaling Groups**.

### Key Idea
```text
Vertical scaling = make one machine bigger
Horizontal scaling = add more machines
```
Horizontal scaling is ideal for systems with **changing or unpredictable demand** and is a core concept in distributed cloud architectures.