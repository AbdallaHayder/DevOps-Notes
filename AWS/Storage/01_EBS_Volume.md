# What's an EBS Volume

An **EBS (Elastic Block Store) volume** is virtual block storage that can be attached to an EC2 instance, similar to a hard drive connected to a computer.
- **Persistent storage** — data remains when an instance is stopped, and can remain after termination depending on the volume's **Delete on termination** setting.
- **Availability Zone specific** — an EBS volume belongs to one AZ and can normally be attached to instances in that same AZ.
- EBS is commonly used for **operating systems, application files, databases, logs, and other persistent data**.

### Simple Mental Model
```text
EC2 Instance = Computer
EBS Volume   = Virtual hard drive
```
```text
EC2
 │
 └── EBS Volume
       └── Persistent data
```

### Key Idea
EC2 provides the compute, while EBS provides **persistent disk storage** for that compute.