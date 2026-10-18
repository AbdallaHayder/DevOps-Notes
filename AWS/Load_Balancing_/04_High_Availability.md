# High Availability

**High Availability** means designing a system so it stays running even if part of the infrastructure fails.

- In AWS, HA is commonly achieved by running resources across multiple Availability Zones ( Usually at least 2 data centers = Availability zones ).
- If one AZ or instance fails, another healthy one can continue serving users.
- HA often works together with **horizontal scaling**, because multiple instances make failover easier.

Two common patterns:
- **Passive HA** — one primary system runs, while a standby backup waits in another AZ. Example: **RDS Multi-AZ**.
- **Active HA** — multiple instances run at the same time across AZs, and traffic is sent only to healthy instances.

### Key Idea
```text
AZ 1 fails ❌
     ↓
AZ 2 keeps serving users ✅
```
The goal of HA is simple: **avoid downtime by removing single points of failure**.