# Introduction to Security Groups

**Security Groups** are virtual firewalls that control **incoming and outgoing traffic** for EC2 instances.
- They use **allow rules only**; anything not explicitly allowed is blocked.
- Rules can allow traffic based on **IP addresses** or **other security groups**.
    - This is useful for large environment where instances need to talk to each other without being exposed to the public.
- Security Groups are **stateful**, meaning return traffic is automatically allowed for an approved connection.
- Example: for a web server, you might allow:
    - **HTTP (80)**.
    - **HTTPS (443)**.
    - and block unnecessary access such as SSH or database ports.

The key idea is that Security Groups help limit EC2 network access to **only the traffic your application actually needs**.
