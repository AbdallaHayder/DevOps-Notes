# Routing Policies - IP based Routing

IP-based routing lets you tell Route 53: “**If the client’s IP belongs to this range, return this application endpoint**.”

You configure **CIDR blocks—ranges of client IP addresses—and map them to your servers or other application endpoints**. These are the users’ IP ranges, not your EC2 subnet ranges.

**Example: one website, `example.com`, served by two application servers**
| Client IP range | DNS answer points to |
|---|---|
| `198.51.100.0/24` | Your application server A |
| `203.0.113.0/24` | Your application server B |
| No matching range | Your configured default endpoint |

A client with IP `198.51.100.25` matches the first range, so Route 53 returns server A’s address. The client then connects to **your server A**; Route 53 only provides the DNS answer.

### Why use it?
Suppose you know customers using a particular ISP have a faster or cheaper network path to your European deployment. You can map that ISP’s IP ranges to that deployment.

You provide this mapping based on your knowledge of the network; Route 53 does not automatically discover which endpoint costs less.

**A clarification to the lecture:*** Route 53 does not always see the individual user’s IP. It uses client-subnet information forwarded by the DNS resolver when available; otherwise, it uses the **resolver’s IP address**.