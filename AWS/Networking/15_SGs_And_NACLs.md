# Security Groups & NACLs

**Security Groups (SGs)** and **Network ACLs (NACLs)** both control traffic, but at different levels.

### Scope
- **Security Group** → works at the **instance/resource level**
- **NACL** → works at the **subnet level**
```text
Internet
   ↓
NACL
   ↓
Subnet
   ↓
Security Group
   ↓
EC2
```
### Security Groups
Security Groups are **stateful**.

If inbound traffic is allowed:
```text
Request IN ✅
Response OUT ✅ automatically
```

You do not need to explicitly allow the return response for that accepted connection.

Think of an SG as a firewall directly protecting the instance.

### NACLs
NACLs are **stateless**.

If traffic is allowed inbound, the return traffic must also be allowed outbound.
```text
Inbound rule  ✅
Outbound rule ✅

Both are needed
```
They control traffic crossing the subnet boundary.

### Incoming Request Flow
For traffic coming into an EC2:
```text
Internet
   ↓
NACL inbound rules
   ↓
Security Group inbound rules
   ↓
EC2
```
If either one blocks the request, the traffic stops.

For the response:
```text
EC2
   ↓
Security Group
   ↓
NACL outbound rules
   ↓
Requester
```
Because the SG is stateful, the response is automatically allowed for an established connection.

The NACL is stateless, so its outbound rules still need to permit the response.

### Outgoing Request Flow
If the EC2 starts the connection:
```text
EC2
   ↓
Security Group outbound rules
   ↓
NACL outbound rules
   ↓
Destination
```
When the reply comes back:
```text
Destination
   ↓
NACL inbound rules
   ↓
Security Group
   ↓
EC2
```

Again, the NACL must explicitly allow the returning traffic.

Key Idea
```text
Security Group
= instance-level
= stateful

NACL
= subnet-level
= stateless
```

Both provide **layered security**.

When troubleshooting connectivity problems, check both:
```text
Security Group rules
        +
NACL rules
```

because either one can block the traffic.