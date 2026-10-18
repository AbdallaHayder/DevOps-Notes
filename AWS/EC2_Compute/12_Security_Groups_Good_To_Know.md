# Security Groups Good to know

- A single **Security Group can attached to multiple EC2 instances**, making rules reusable.
- Security Groups are tied to a specific **VPC and Region** and cannot be reused outside that scope.
- SGs sit **outside the EC2 instance**, so blocked traffic never reaches the server itself.
- A useful practice is to keep **SSH access in a separate Security Group** so it can be tightly restricted.
- **Timeouts** often point to a Security Group or networking issue, while **connection refused** usually means the application/service itself is not running or is misconfigured.
- **Inbound traffic is denied by default** unless you explicitly allow it.
- **Outbound traffic is allowed by default** unless you restrict it.

The key troubleshooting idea: if an EC2 service is unreachable, check the **Security Group rules first**, then check the application running on the instance.