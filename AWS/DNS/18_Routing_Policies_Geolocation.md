# Routing Policies - Geolocation

Geolocation routing lets you choose **which application destination Route 53 returns based on where a DNS query appears to come from**.

You configure rules for **continents, countries, or US states**.

For example, your single website, `example.com`, could use:
| Location rule | Destination you configure |
|---|---|
| **France** | Your application serving French content |
| **Europe** | Your general European application |
| **Default** | Your general/global application |

**The most specific matching rule wins**. A user identified as being in France matches both France and Europe, so the **France rule takes priority**. Someone in Germany uses the Europe rule if you haven’t configured a Germany-specific rule.

### Why create a default record?

It handles queries from:
- Locations without a matching rule.
- IP addresses whose location Route 53 cannot identify.

Without a default, those queries receive **no answer for the requested record**.

### When it’s useful
- Sending users to regional or language-specific versions of your application.
- Choosing where content is offered geographically.
- Dividing application demand according to geographic rules.

Your **application serves the different content**—Route 53 only selects the destination.

### Important distinctions
- **Geolocation**: “Use the destination I configured for this location.”
- **Latency-based**: “Use the configured Region with the lowest estimated network delay.”

Location is estimated from DNS-query IP information, not exact GPS location. Health checks can help avoid unhealthy destinations, but cached answers and failure-detection delays mean users aren’t **always** guaranteed a healthy endpoint. Geographic DNS rules alone also don’t enforce secure access restrictions.