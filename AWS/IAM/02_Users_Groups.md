# IAM Users & Groups

When you create an AWS account, the **root user** has full access to everything, so it should be protected and avoided for everyday tasks.

- Create **individual IAM users** for people or services that need AWS access.
- **Groups** let you organize users by role, such as Developers, Operations, or Audit, and assign permissions to the group instead of each user separately.
- A user can belong to **multiple groups** or no group at all.
- Groups can contain **users only**, only you cannot place one group inside another.
---
The goal is to give each person only the access they need while keeping the root account locked down.