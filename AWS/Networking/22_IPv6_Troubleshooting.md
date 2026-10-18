# IPv6 Troubleshooting

Even in an IPv6-enabled VPC, your environment may still depend on available **IPv4 addresses**.

A common problem is trying to launch a new instance and it fails even though plenty of IPv6 addresses are available.

The issue may actually be:

**The subnet has run out of available IPv4 addresses**.

IPv6 address space is extremely large, so IPv6 exhaustion is unlikely. IPv4 space is much more limited.

### Fix
Increase the available IPv4 address space, for example by using a larger/additional IPv4 CIDR allocation for the subnet/network design.

### Key Idea
Having lots of IPv6 addresses does not help if the subnet still requires IPv4 addresses and has run out of them.

So when instance launches fail in a dual-stack environment, check IPv4 address availability as well as IPv6.