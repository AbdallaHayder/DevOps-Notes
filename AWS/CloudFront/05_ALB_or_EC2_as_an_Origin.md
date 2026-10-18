# CloudFront - ALB or EC2 as an origin

CloudFront can fetch content from your application running on EC2, either **through an ALB or directly from an instance**.

### 1. ALB as the origin
```text
Users → CloudFront → Public ALB → Private EC2 instances
```
- CloudFront sends requests to the ALB when it needs content from the origin.
- The ALB forwards requests to your application instances.
- The instances can remain private, without public IP addresses.

**Security groups**: allow CloudFront to reach the ALB’s HTTP/HTTPS listener. Allow the backend EC2 instances to receive application traffic **from the ALB’s security group**, because the ALB connects to them.

### 2. EC2 directly as the origin
```text
Users → CloudFront → Public EC2 web server
```
Here, there is no ALB. The instance’s security group allows CloudFront to reach its web-server port.

### Allowing CloudFront traffic
AWS provides a **managed prefix list**—an automatically maintained group of CloudFront origin-facing IP ranges—that you can reference in security-group rules instead of manually maintaining individual IP ranges.

However, this allows CloudFront infrastructure generally, **not just your distribution**. For a public ALB, checking a secret header added by your distribution provides an additional restriction.

**Lecture correction**: the origin does **not always have to be public**. The lecture describes public origins, but CloudFront now also supports **VPC origins**, allowing supported private ALBs and EC2 instances to serve as origins.