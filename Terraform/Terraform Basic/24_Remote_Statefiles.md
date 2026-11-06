# Remote Statefiles

**Remote state stores Terraform’s state in a shared location**, such as AWS S3 or HCP Terraform, instead of only on your laptop. This lets teammates and CI/CD pipelines work from the same infrastructure record.

**State locking helps prevent conflicting operations**. When supported and enabled, a lock prevents another Terraform operation from modifying the same state while one is already working on it.

Remote storage can also provide **encryption, access controls, and recovery through backups or version history**. These protections depend on the backend and its configuration—they aren’t guaranteed simply because state is remote.
```text
Your terminal ─┐
Teammate ──────┼── Shared remote state
CI/CD pipeline ┘   + locking and access controls
```
**Local state suits simple solo practice; remote state makes collaboration easier to coordinate and protect**.