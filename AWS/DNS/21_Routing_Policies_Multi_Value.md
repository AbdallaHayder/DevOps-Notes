# Routing Policies - Multi Value

Multivalue routing lets Route 53 return **multiple IP addresses for the same domain**, with an optional **health check for each resource**.

### Example: one website running on three EC2 servers

You create three separate A records for `example.com`, each containing a different server’s IP address and associated health check.
- **All three healthy**: Route 53 returns all three addresses.
- **Server B unhealthy**: Route 53 returns A and C.
- The user’s browser or application chooses an address from the answer and connects to that server.

Route 53 returns **up to eight healthy records per DNS query**.

### How is this different from Simple routing?

Simple routing can also return multiple IP addresses, but it cannot attach a separate health check to each value. Multivalue routing lets Route 53 filter answers using each record’s health.

### Why isn’t it a replacement for an ALB?
Route 53 provides a list of addresses during DNS lookup. **An ALB actually receives application requests and forwards them to its backend servers**. Multivalue provides basic load sharing, but does not control each HTTP request or guarantee an even traffic split.

**Lecture clarification**: “Only healthy resources” has exceptions:
- Records without health checks are considered healthy.
- If **all records are unhealthy**, Route 53 returns up to eight unhealthy records.
- Previously cached answers can still contain a failed server’s address.