# Private vs Public IP (IPv4)

Devices inside a home or company network usually use **private IP addresses**, which work only inside that local network and are **not directly routable on the public internet**
- **Private IPs** can be reused in many separate networks, e.g. multiple companies can both use `192.168.x.x` or `10.x.x.x`.
- A router or gateway sits between the private network and the internet and allows traffic to move between them.
- **NAT (Network Address Translation)** translates private IP-based traffic into public IP traffic so internal devices can reach external websites and services.

### Simple Flow
```text
Private device
10.0.0.10
   ↓
Router / Gateway
   ↓ NAT
Public IP
203.x.x.x
   ↓
Internet
   ↓
Website / Server
```
The key idea is: **private IPs are for internal networks, public IPs are for internet communication, and NAT helps bridge the two.**