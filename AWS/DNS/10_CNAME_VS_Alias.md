# CNAME vs Alias

AWS resources such as your **load balancer or CloudFront distribution** have AWS-assigned hostnames. You usually want users to access them through your own name, such as `app.example.com`.

**CNAME: points one name to another name**
```text
app.example.com → your load balancer’s AWS hostname
```
The resolver follows that target name to obtain its IP address.

A CNAME works at a name such as `app.example.com`, but **not at the zone apex**—`example.com` if that is your hosted zone’s name.

**Route 53 alias: points your name to a supported target**

For example, you can create an **A record with Alias enabled**:
```text
example.com → your AWS load balancer
```
Route 53 returns the load balancer’s IP addresses and tracks address changes for you.

Unlike CNAME, an alias can work at **both**:
- `example.com` — the zone apex.
- `app.example.com` — a subdomain.

**Correction**: An alias does **not** specifically point “to a root domain,” as the lecture says. Its target is a supported AWS resource or a compatible record in the same hosted zone. It cannot point to every arbitrary hostname.
| Situation | Suitable choice |
|---|---|
| `example.com` → your AWS load balancer | **Alias** |
| `app.example.com` → your AWS load balancer | **Alias** is a useful choice |
| `app.example.com` → an external provider’s hostname that isn’t a supported alias target | **CNAME** |

**Two qualifications to the lecture**:
- “**Free**”: Queries for eligible aliases to services such as ELB and CloudFront have no Route 53 query charge. Hosted-zone and resource charges still apply; not every alias query is free.
- “**Built-in health checks**”: For supported targets, you can enable **Evaluate Target Health**, allowing Route 53 to consider the target’s health when selecting answers. This is not an automatic application health check for every alias.