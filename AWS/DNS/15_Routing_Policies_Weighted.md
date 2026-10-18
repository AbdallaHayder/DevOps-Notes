# Routing Policies - Weighted

Weighted routing lets **one domain name lead to multiple application destinations**, with some selected more often than others.

For example, your website `example.com` could use:
- **EC2 A**: your stable application version.
- **EC2 B**: a new version you want to introduce gradually.

Assign A a weight of **90** and B a weight of **10**. Route 53 will favour A in its DNS answers while selecting B for a smaller share.

**How weights work**
```text
Selection share = record’s weight ÷ total weight
```
| Your application server | Weight | Intended share of DNS answers |
|---|---:|---:|
| A | 70 | 70% |
| B | 20 | 20% |
| C | 10 | 10% |

Weights **don’t need to total 100**. Using **7, 2, 1** gives the same proportions. You create weighted records with the **same domain name and record type**, but different destinations and identifiers.

**Health checks**

With health checks configured, Route 53 can avoid selecting an unhealthy destination when healthy alternatives exist. However, previously cached DNS answers can still direct clients to it until they expire.

**What does weight 0 mean?**

It normally removes that destination from selection, but **doesn’t guarantee zero traffic**:
- Cached answers and existing connections can still reach it.
- If **all weights are 0**, Route 53 selects records with equal probability.
- With health checks, zero-weight records can become fallback candidates when all nonzero-weight records are unhealthy.

**Correction to the lecture**: These percentages apply to **DNS-answer selection**, not an exact percentage of website requests or users. One cached answer may serve many users.