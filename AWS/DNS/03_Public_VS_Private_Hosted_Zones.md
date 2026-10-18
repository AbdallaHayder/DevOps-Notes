# Route 53 - Public vs Private Hosted Zones

The main difference is **where the DNS records can be resolved**.
| | Public hosted zone | Private hosted zone |
|---|---|---|
| **Purpose** | DNS for publicly accessible applications | DNS for internal applications and services |
| **DNS visibility** | Public internet | Associated VPCs and appropriately configured connected networks |
| **Example** | `example.com` → public application destination | `db.example.internal` → private database address |

For example, an application can look up db.example.internal, receive the database’s private IP, and then connect to it. **Route 53 resolves the name; the application connection happens separately**.

Two clarifications:
- **Private DNS does not automatically secure the resource**. Network routes, security groups, and application permissions still control access.
- **“VPC-only” is simplified**: connected on-premises networks can also resolve private-zone records through properly configured Route 53 Resolver inbound endpoints.
