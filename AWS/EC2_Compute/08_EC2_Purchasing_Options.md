# EC2 Instances Purchasing Ooptions

AWS provides several ways to pay for EC2 depending on how predictable, flexible, or critical your workload is:

- **On-Demand Instances** — pay for what you use with no long-term commitment -you pay by the second-. Best for **short-term, temporary, or unpredictable workloads**.
    - **Examples**: Testing a new application, or running a temporary project.

- **Reserved Instances** — commit for **1 or 3 years** in exchange for lower costs. Best for **steady, long-running workloads**.
    - **Standard** — higher discount, less flexibility
    - **Convertible** — more flexibility to change instance attributes **e.g. instance type**.
    - **Example**: Running a production workload/application that you know will be active for a long term

- **Savings Plans** — also based  on **1 or 3-year commitments**, but generally more flexible than Reserved Instances across different compute usage **e.g. instance type and region**.

- **Spot Instances** — use unused AWS capacity at a large discount, but AWS can interrupt the instance.
    - **Example**: fault-tolerant workloads such as **batch jobs or data analysis**.

- **Dedicated Hosts** — reserve an entire physical server for your use, giving more hardware visibility and control. 
    - **Useful for**: compliance or licensing requirements.

- **Dedicated Instances** — instances run on hardware not shared with other AWS customers, but you do not control the physical host itself.
    - **Useful for**: isolating hardware for security or compliance reasons.

- **Capacity Reservations** — reserve EC2 capacity in for a certain duration in a specific **Availability Zone** so it is available when you need it.
    - **Useful for**: critical workloads that need to run in a certain AZ, especially during high demand periods.

### Key Idea
Choose based on workload type:
```text
Short-term / unpredictable → On-Demand
Long-term / predictable → Reserved Instances or Savings Plans
Interruptible workloads → Spot Instances
Compliance / isolation → Dedicated options
Guaranteed AZ capacity → Capacity Reservations
```

The main goal is to balance **cost, flexibility, availability, and workload requirements**.