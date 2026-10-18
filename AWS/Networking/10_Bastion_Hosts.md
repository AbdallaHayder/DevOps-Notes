# Bastion Hosts — Secure Access to Private Instances

A **bastion host** is a controlled entry point used to access EC2 instances that live in a **private subnet**.

Private instances usually don’t have direct internet access, which is good for sensitive systems like:
- databases
- backend servers
- internal services

### How it works
```text
Your laptop
   ↓ SSH
Bastion Host
(public subnet)
   ↓ SSH
Private EC2
(private subnet)
```

The bastion host is reachable from the internet, but access should be tightly restricted.

### Security Group Setup
- **Bastion SG**
  - Allow SSH only from trusted IPs, such as your office/public IP.
- **Private EC2 SG**
  - Allow SSH only from the bastion host, preferably by referencing the bastion’s Security Group.

### Key Idea
A bastion host lets you manage private EC2 instances without exposing those instances directly to the internet.

It acts as a **secure jump** point into the private network.