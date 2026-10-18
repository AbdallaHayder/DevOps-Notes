# Application Load Balancer - Good to know

Each **Application Load Balancer (ALB)** gets an AWS-provided **DNS hostname**, for example:
```text
my-alb.region.elb.amazonaws.com
```
Clients can use this hostname to access the application through the load balancer.

If you want a custom domain such as:
```text
app.example.com
```
you can use **Route 53** and point the domain to the ALB.

### Client IP and Forwarded Headers
When a user connects through an ALB, the backend EC2 instance usually sees the request as coming from the **load balancer**, not directly from the user's IP.

To preserve the original client information, the ALB adds special HTTP headers:
- `X-Forwarded-For` → original client IP address
- `X-Forwarded-Port` → port the client connected to
- `X-Forwarded-Proto` → protocol used, such as http or https

Example:
```text
Client IP: 12.34.56.78
        ↓
       ALB
        ↓
EC2 sees ALB connection

X-Forwarded-For: 12.34.56.78
X-Forwarded-Proto: https
X-Forwarded-Port: 443
```
Your application must be configured to read these headers if it needs the real client information.

These headers are useful for things such as:
- logging
- security auditing
- geolocation
- rate limiting
- analytics

**Key idea**: the ALB becomes the direct connection point for the client, but it passes the original client details to your application through HTTP headers.