# Load Balancer Security Groups

Load Balancer Security Groups
A common production setup uses **two Security Groups**: one for the load balancer and one for the backend EC2 instances.
- **Load Balancer SG**
  - Allows **HTTP (80)** and/or **HTTPS (443)** from the internet.
  - Source can be `0.0.0.0/0` if the application is public.
- **Application/EC2 SG**
  - Allows traffic only **from the Load Balancer’s Security Group**.
  - This prevents users on the internet from connecting directly to the EC2 instances.
Example:
```text
Internet
   ↓
ALB Security Group
80 / 443 from 0.0.0.0/0
   ↓
Application Security Group
80 from ALB-SG only
   ↓
EC2 instances
```
The idea is that the **load balancer is the public entry point**, while the backend instances stay protected and only accept traffic coming through the load balancer.

This is a very common pattern for building **secure, scalable, and controlled web architectures**.