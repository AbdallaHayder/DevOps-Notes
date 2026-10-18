# Route 53 - Alias Records

An **alias lets your domain point to a supported AWS resource**, such as your Application Load Balancer (ALB), CloudFront distribution, or S3 website endpoint.

### Why this is useful
Imagine `example.com` should open the application behind your ALB:
```text
example.com → Alias targeting your ALB
```
You select the ALB as the target instead of manually entering its IP addresses. **When AWS changes the ALB’s IPs, Route 53 automatically returns the updated addresses**. Previously cached answers still follow their TTLs.

### Main features
- **Works at the zone apex**: You can use `example.com`, the exact name of your hosted zone. CNAME cannot be used there.
- **Also works for subdomains**: For example, `app.example.com`.
- **Typically uses A or AAAA for AWS-resource targets**: A returns IPv4 addresses; AAAA returns IPv6 addresses where supported.
- **No separately configured TTL**: Route 53 uses the AWS resource’s default TTL, or the target record’s TTL when aliasing another record in the same hosted zone. Alias answers are still cached. 

**Small correction**: “Always A or AAAA” is too broad—aliases can also reference compatible records of other types within the same hosted zone.