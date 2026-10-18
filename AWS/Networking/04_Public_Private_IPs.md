# Public vs Private IP (IPv4)

IPv4 addresses can be either **private or public**.

### Private IP Addresses
Private IPs are used inside internal networks, such as:
- your home network
- a company network
- an AWS VPC

Common private IPv4 ranges are:
```text
10.0.0.0/8 
→ 10.0.0.0 to 10.255.255.255 
In big networks

172.16.0.0/12
→ 172.16.0.0 to 172.31.255.255
AWS default VPC networks

192.168.0.0/16
→ 192.168.0.0 to 192.168.255.255
e.g, home networks
```

These addresses are **not directly routable on the public internet**.

### Public IP Addresses
Public IP addresses are used for communication over the internet and are **globally routable**.
```text
Internet
   ↓
Public IP
   ↓
Your resource/network
```
### Special Case
```text
127.0.0.1
```

is a **loopback address**, meaning “this computer itself.” It is not a normal private-network address.

### Key Idea
**Private IP = communication inside private networks**

**Public IP = communication across the internet**