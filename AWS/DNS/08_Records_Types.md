# Route 53 - Records Types

1. **A record — name → IPv4 address**
```text
example.com → 192.0.2.1
```
If your website runs on a public EC2 instance, this could point to **your EC2 instance’s public IPv4 address**. The browser obtains that address and connects to your application.

2. **AAAA record — name → IPv6 address**
```text
example.com → 2001:db8::1
```
It performs the same job as an A record, but returns an **IPv6 address**. Both IPs above are illustrative.

3. **CNAME record — name → another name**
```text
www.example.com → example.com → its IP address
     CNAME                      A or AAAA
```
This makes `www.example.com` an alias for `example.com`. You maintain the IP address at the target name rather than duplicating it at both names.

**Restriction**: You cannot create a CNAME at the **zone apex**—`example.com` if that is your hosted zone’s name. The apex requires NS and SOA records, which cannot coexist with a CNAME at the same name. Route 53 **alias records** can point the apex to supported targets, such as an AWS load balancer.

The lecture calls this the “root domain”; here it means the **zone apex**, not the DNS root (`.`).

4. **NS record — identifies the authoritative DNS servers**

NS records tell resolvers **which DNS servers are responsible for a zone’s records**.

For example, when your public domain uses Route 53, its delegation points to the name servers assigned by Route 53. Resolvers ask those servers for records such as your application’s A record.

**NS identifies who answers DNS questions; A/AAAA provide the destination IP address**. The DNS servers and your application servers have different jobs