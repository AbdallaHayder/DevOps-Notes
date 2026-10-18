# IAM Policies Inheritance

IAM users **inherit permissions from every group they belong to**.

---

- If a user belongs to multiple groups, they receive the combined permissions from all of them.
- Example: a user in both **Developers** and **DevOps** gets permissions from both groups.
- **Inline policies** can be attached directly to a specific user when they need unique permissions not shared with the group.

---

A good appraoch is to **manage permissions through groups first**, then use inline policies only for special cases.