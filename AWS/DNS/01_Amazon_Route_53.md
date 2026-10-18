# Amazon Route 53

Route 53 is AWS’s **managed, highly available, scalable DNS service**. It helps users reach applications using domain names instead of remembering IP addresses.

Its main capabilities are:
- **Authoritative DNS**: Stores and serves the official DNS records for your domain. You manage records that point names toward resources such as EC2 instances or load balancers. “Authoritative” means **the official source of the DNS answer**, not simply permission to edit records.
- **Domain registration**: Lets you register and manage domain names. Domain registration and DNS hosting are separate functions—you can use different providers for each.
- **Health checks and DNS failover**: When configured, Route 53 can detect an unhealthy primary endpoint and return a backup destination in DNS answers. Cached answers mean switching is not necessarily immediate.

For example, Route 53 helps resolve app.example.com to your application’s destination. **The browser then connects to that destination; website traffic doesn’t pass through Route 53**.

**Correction: “100% availability”**

The 100% SLA is an availability commitment for authoritative DNS hosted zones outside GovCloud, with conditions and eligible service credits. It does **not** mean outages are impossible, guarantee your website’s uptime, or cover the Route 53 API and console. The lecture’s “only AWS service” claim wasn’t verified.

The name **“53” refers to DNS port 53**, used by traditional DNS over UDP and TCP.