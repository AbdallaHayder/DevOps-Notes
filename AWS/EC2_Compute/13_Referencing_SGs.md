# Referencing Other Security Groups

Instead of allowing traffic based only on **IP addresses**,  a Security Group can allow traffic from **another Security Group**.

- This is useful when EC2 instances can change IPs, such as in **Auto Scaling Groups** or **dynamic environments**.
- Example: an **app-server SG** can be allowed to connect to a **database SG** on a specific port.
- Any instance using the referenced SG is automatically trusted for that rule.
- This avoids constantly updating firewall rules when instances are created, removed, or given new IP addresses.

### Key Idea
```text
App EC2s
   ↓
App-SG
   ↓ allowed on specific port
DB-SG
   ↓
Database EC2
```

Using SG-to-SG references makes security rules **simpler, more scalable, and easier to manage** than relying on changing IP addresses.