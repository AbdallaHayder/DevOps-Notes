# EC2 Sizing & Configuration

When launching an **EC2 instance**, you choose several settings based on your workload:

- **Operating System**: Linux, Windows, macOS, etc.
- **CPU / Compute Power**: choose how much processing power and how many cores you need.
- **Memory (RAM)**: more memory helps with larger or more demanding applications.
- **Storage**:
    - **EBS (Elastic Block Store)** (Network Attached) — persistent block storage attached to an EC2 instance.
    - **EFS (Elastic File System)** (Network Attached) — shared file storage that multiple instances can access.
    - **EC2 Instance Store** (Hardware) — very fast local storage, but temoporary and lost when the instance stops/terminates depending on lifecycle.
- **Networking (Network Card)**: configure network performance depending on traffic and whether the instance gets a public IP.
- **Security Groups**: act as a virtual firewalls controlling inbound and outbound traffic.
- **EC2 User Data (Bootstrap Script)**: a startup script that can automatically install software, run updates, or configure the instance when it first launches.

The key idea: **right-sizing matters** — too little capacity hurts performance, while too much means unnecessary cost.