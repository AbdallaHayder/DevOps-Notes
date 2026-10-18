# Amazon EFS (Elastic File System)

**Amazon EFS (Elastic File System)** is a managed **shared network file system** that multiple EC2 instances can mount and access at the same time.
- It is designed for **multi-AZ environments**, giving you high availability and redundancy.
- EFS automatically **scales as you add or remove data**, so you don't need to manually resize storage.
- Multiple EC2 instances can mount the same EFS file system, making it useful for workloads that need **shared files**.
- Common use cases include **content management systems, shared application files, and distributed workloads**.
- EFS works similarly to mounting an **NFS file system** on Linux.
- The trade-off is **higher cost**, so it should be used when shared storage is genuinely needed.

### Simple Mental Model
```text
EC2 #1 ─┐
EC2 #2 ─┼──> EFS shared file system
EC2 #3 ─┘
```

**Key Idea**: use EFs when several EC2 instances need access to the **same shared files**.