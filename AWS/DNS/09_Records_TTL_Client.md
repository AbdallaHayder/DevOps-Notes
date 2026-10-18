# Route 53 - Records TTL (Time To Live) Client

**TTL determines how long a DNS resolver can reuse a cached answer before it needs fresh information**. It is measured in seconds.
| | High TTL | Low TTL |
|---|---|---|
| **Lecture example** | `86400` seconds = 24 hours | `6` seconds |
| **Caching** | Answers stay cached longer | Answers expire quickly |
| **Queries to Route 53** | Fewer queries | More queries |
| **Cost** | Can reduce billable query costs | Can increase billable query costs |
| **DNS changes** | Old answers may remain in use longer | Resolvers generally discover changes sooner |

**Example: moving your website between EC2 instances**

A resolver caches **EC2 A’s IP address** at 10:00 with a TTL of one hour. You change the record to **EC2 B’s IP address** at 10:10.

That resolver can continue returning A’s address until **11:00**. Route 53 has the updated record, but the resolver is still using its cached copy.

For a planned migration, lower the TTL **in advance and allow the old TTL to expire**. Lowering it at the moment you change the IP does not shorten answers already cached under the previous TTL.

### Alias records
For a normal, non-alias record, you configure the TTL. For a Route 53 alias, you don’t set a separate TTL:
- Alias to an **AWS resource**: uses that resource’s default TTL.
- Alias to **another record in the same hosted zone**: uses the target record’s TTL.

So alias answers **still have TTLs**—they aren’t uncached.

**Correction**: Low TTL means changes can be picked up sooner, not that answers are “always fresh.” Six seconds is the lecture’s example, not a universal recommended setting.