# Route 53 - Routes

A **DNS record defines the information Route 53 returns when someone queries a name**. These are different from the routes in a VPC route table.

A typical record has five main settings:
| Setting | Purpose | Example |
|---|---|---|
| **Name** | Domain or subdomain being queried | `api.example.com` |
| **Type** | Kind of DNS information | `A` |
| **Value** | Answer associated with the name | `203.0.113.20` |
| **Routing policy** | How Route 53 selects its answers | Simple |
| **TTL** | How long resolvers can cache the answer, in seconds | `300` = 5 minutes |

In this example, an A-record lookup for `api.example.com` returns `203.0.113.20`. The client then connects to that address.

**Routing policies select DNS answers**—for example, to influence distribution across destinations or support failover. Route 53 doesn’t forward the website requests itself.

Common record types:
| Type | Purpose |
|---|---|
| **A** | Maps a name to an IPv4 address |
| **AAAA** | Maps a name to an IPv6 address |
| **CNAME** | Maps an alias name to another domain name |
| **NS** | Identifies authoritative name servers |
| **MX** | Identifies servers that receive email |
| **TXT** | Stores text, often for domain verification and email authentication |
| **CAA** | Specifies which certificate authorities may issue certificates for the domain |

**Correction**: SPF email policies are published using **TXT records**. The separate **SPF record type is obsolete**; SPF itself is still used. Also, `apiexample.com` is a separate domain—`api.example.com` is a subdomain of `example.com`.