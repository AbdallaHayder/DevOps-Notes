# DNS Terminologies

| Term | Meaning |
|---|---|
| **Domain registrar** | A provider through which you register and renew domain names, such as Route 53 or GoDaddy. |
| **DNS records** | Information associated with a name: **A → IPv4**, **AAAA → IPv6**, **CNAME → another domain name**, **NS → authoritative name servers**. |
| **Zone file** | A text representation of a zone’s DNS records. In Route 53, you normally manage these records through a hosted zone. |
| **Name server** | A server that answers DNS queries. An **authoritative** server supplies official records; a **recursive resolver** finds and caches answers for clients. It doesn’t necessarily host your website. |
| **TLD** | Top-Level Domain, such as `com`, `org`, or `io`, immediately below the DNS root. |
| **SLD** | Second-Level Domain, such as `example.com`; `example` is its second-level label. |
| **FQDN** | Fully Qualified Domain Name—the complete DNS name, such as `api.www.example.com.`. It excludes `http://` and URL paths. |

These distinguish domain registration, DNS hosting, and name resolution.

**Correct breakdown of** `http://api.www.example.com`:
```text
http://                   Scheme: use HTTP (application layer / Layer 7)

.                             DNS root (root)
└── com                       Top-level domain (TLD)
    └── example               example.com (SLD)
        └── www               www.example.com (sub domain)
            └── api           api.www.example.com (sub domain)
                └── ://       ://api.www.example.com (FQDN)
                    └── http  http://api.www.example.com (Protocol)
```

Here, `api` is nested **under** **`www`**. `api.www.example.com` and `api.example.com` are different names.

**Corrections**: The transcript incorrectly calls `example` the TLD and `.com` the root. The root is `.`, usually omitted when typing a URL. Also, the domain you register isn’t always second-level—for example, `example.co.uk`.