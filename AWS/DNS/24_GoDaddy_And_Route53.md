# GoDaddy as Register & Route 53 as DNS Service

You can keep a domain registered with **GoDaddy** while using **Route 53 to manage its DNS records**.

For the lecture’s example, `codecollabs.com`:
1. **Create a public hosted zone in Route 53** for `codecollabs.com`.
2. **Add your DNS records** there: A for IPv4, AAAA for IPv6, CNAME for another hostname, and any other required records.
3. **Copy the nameservers assigned to that hosted zone**.
4. In GoDaddy’s domain settings, enter those names under **custom nameservers**.

This tells the DNS system: “**For DNS answers about `codecollabs.com`, ask these Route 53 nameservers.**” Use your hosted zone’s actual nameservers, not the example names shown in the lecture. 

Afterward:
- **GoDaddy**: domain registration and renewal.
- **Route 53**: DNS records and answers.
- **Your application servers**: serve the website.

**Important clarification**: changing nameservers does **not** automatically copy existing records from GoDaddy. For an existing domain, prepare the necessary records in Route 53 before switching—including email records if used.