# Networking Access Control List (NACL)

A **NACL** is a security filter that controls traffic at the **subnet level**.
- Applies to all resources inside that subnet.
- Each subnet is associated with **one NACL**.
- You can use the default NACL or create a custom one.
- NACLs are **stateless**:
  - inbound traffic must be allowed
  - return/outbound traffic must also be allowed separately

### NACL Rules
Rules are evaluated by **rule number**:

```text
Lower number = higher priority
First matching rule wins
```

Example:

```text
Rule 100 → ALLOW 10.0.0.10/32
Rule 200 → DENY  10.0.0.10/32
```

Rule `100` wins because it is evaluated first.

If no rule matches, the final `*` catch-all rule applies, which normally **denies the traffic**.

For custom NACLs, traffic is denied until you add appropriate rules.

### Best Practice
Use spaced rule numbers:

```text
100
200
300
```

instead of:

```text
1
2
3
```

This leaves room to add rules later, such as `150`, without renumbering everything.

### Why Use NACLs?
They are useful for **subnet-wide filtering**, especially when you want to block a particular IP from reaching multiple resources.

```text
Internet traffic
      ↓
     NACL
      ↓
   Subnet
  ├── EC2
  ├── EC2
  └── EC2
```

One NACL rule can affect everything in that subnet.

### Key Idea
- **Security Group = resource-level firewall**
- **NACL = subnet-level firewall**

The biggest difference to remember so far:

```text
Security Group → stateful
NACL           → stateless
```