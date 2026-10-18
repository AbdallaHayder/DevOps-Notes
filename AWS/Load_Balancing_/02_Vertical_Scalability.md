# Vertical Scalability

**Vertical Scalability** means making a single server more powerful instead of adding more servers.

Example:
```text
t2.micro → t2.large
```
The instance stays as one server, but gets more resources such as **CPU and RAM**.
- Common for **non-distributed systems** and services like databses.
    - **Examples**: 
        1) **Single database server** — MySQL or PostgreSQL database needing more RAM/CPU
        2) **RDS database instance** — you may increase the DB instance class
        3) **Legacy applications** that were designed to run on one server
        4) **Single Redis/ElastiCache node** in simpler setups
- Useful when a workload simply needs more power.
- It has a limit because eventually you reach the **largest available instance size**.
- Beyond that point, you usually need **horizontal scaling** by adding more servers.

**Vertical scaling** is often the first step when you need to improve performance or handle a larger load. But, its important to know the limits

**Key idea**: vertical scaling = **scale up one machine**.