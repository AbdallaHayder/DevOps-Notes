# AWS Availability Zones (AZs)

An **Availability Zone (AZ)** is a separate data center or group of data centers within an AWS region.
Most regions contain multiple AZs, for example `eu-west-2a`, `eu-west-2b`, and `eu-west-2c` in London.

- Each AZ has its own **power**, **networking**, and **connectivity**, helping isolate failures.
- AZs are phyiscally seprate but connected by **high speed**, **low-latency networks**.
- Deploying resources across multiple AZs improves **high availability, fault tolerance, and resilience**.
- If one AZ fails, applications can continue running from resources in other AZs.