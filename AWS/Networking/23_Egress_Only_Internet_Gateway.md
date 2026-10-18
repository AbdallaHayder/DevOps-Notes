# Egress-only Internet Gateway
An **Egress-Only Internet Gateway** is used for **IPv6 outbound internet access**.
- It works **only with IPv6**.
- It allows instances to **initiate connections to the internet**.
- It blocks the internet from **initiating new connections back** to those instances.
- It is similar in purpose to a NAT Gateway for IPv4, but it does **not perform NAT** because IPv6 does not need address translation.

You must update the subnet’s **route table** so IPv6 internet traffic goes through the Egress-Only Internet Gateway.


Example route:

`::/0 → Egress-Only Internet Gateway`

### Key Idea
**NAT Gateway = private IPv4 outbound access**

**Egress-Only Internet Gateway = protected IPv6 outbound access**

It is useful when you want IPv6-enabled private resources to reach the internet without allowing unsolicited inbound IPv6 connections.