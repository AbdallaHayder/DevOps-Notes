# Route 53 - Hosted Zones

A **hosted zone is a container for DNS records** belonging to a domain and its subdomains. These records tell Route 53 what answers to return when someone looks up a name.
| Type | Purpose | Example |
|---|---|---|
| **Public hosted zone** | DNS resolution on the public internet | `application1.mypublicdomain.com` → public application |
| **Private hosted zone** | Internal DNS resolution for associated VPCs | `application1.company.internal` → private server |

For example, one hosted zone named `mypublicdomain.com` can contain records for both `application1.mypublicdomain.com` and `application2.mypublicdomain.com`. **You don’t need a separate hosted zone for every application**.

**Important clarification**: Private DNS doesn’t itself secure an application. It controls DNS visibility; routes, security groups, and application permissions still control access.

**Cost**: The lecture’s **$0.50 per hosted zone per month** applies to the first 25 zones. Public DNS queries may cost extra; private hosted-zone queries have no additional Route 53 query charge. Domain registration is separate. Delete unneeded lab zones when finished to avoid ongoing charges.