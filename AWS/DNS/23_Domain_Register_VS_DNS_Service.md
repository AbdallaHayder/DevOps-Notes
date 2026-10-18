# Domain Register vs DNS Service

These are **two separate roles**, although one company can provide both:
| Role | What it does |
|---|---|
| **Domain registrar** | Registers your domain, such as `example.com`, and handles renewal so you keep control of the name. |
| **DNS service** | Stores your DNS records and answers queries—for example, telling browsers which IP address to connect to for `example.com`. |

### Example: register with GoDaddy, use Route 53 for DNS
1. Register `example.com` with **GoDaddy**.
2. Create a **public hosted zone** in Route 53 and add your DNS records.
3. In GoDaddy’s domain settings, set the domain’s **nameservers** to those assigned to your Route 53 hosted zone.
Those nameserver settings tell the DNS system: “**Ask these Route 53 servers for the DNS records of `example.com`.**”

Afterward:
- **GoDaddy** still manages your domain registration and renewal.
- **Route 53** manages your DNS answers.
- **Your application infrastructure**, such as EC2, serves the actual website.

**Changing your DNS provider does not require transferring your domain registration**. You can keep registration with one provider while choosing another for its DNS features.