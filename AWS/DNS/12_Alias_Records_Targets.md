# Route 53 - Alias Records Targets

Alias records work with **specific supported targets**, not every AWS resource or hostname.
| Common target | What your domain lets users reach |
|---|---|
| **ALB / NLB** | Your application through its load balancer |
| **CloudFront distribution** | Your content delivered through CloudFront |
| **API Gateway** | Your API through a configured custom domain |
| **Elastic Beanstalk environment** | Your deployed application, using a supported environment endpoint |
| **S3 website endpoint** | A bucket configured to host a static website |
| **VPC interface endpoint** | A private endpoint for accessing a service |
| **Global Accelerator** | Your application through its accelerator |
| **Another compatible record in the same hosted zone** | The answer provided by that record |

These are **alternative targets**—you don’t need all these services or multiple website names. For example, your one website could use:
```text
example.com → Alias targeting your ALB → Your EC2 application
```
Route 53 returns the ALB’s addresses; the browser connects to the ALB, which forwards the application request to an EC2 backend.

**Important: an EC2 instance’s DNS hostname is not a direct alias target**.

To point directly to your EC2 instance, use:
- **A record**: your instance’s IPv4 address—for a public website, its public IPv4 or Elastic IP.
- **AAAA record**: your instance’s IPv6 address.
- **CNAME**: your instance’s DNS hostname, using a non-apex name such as `www.example.com`.

**Correction**: The lecture’s “CNAME or AAAA” omits **A records**, the usual option for direct IPv4 access to EC2.