# Terraform destroy

**`terraform destroy` removes the infrastructure managed by the current Terraform configuration and state**. It is useful for cleaning up a finished lab without deleting each resource manually.

Terraform reads the configuration and state, generates a **destruction plan**, and asks you to type **`yes`** before proceeding. It then uses the provider to delete resources in dependency order and updates the state to record their removal.
```text
Read configuration/state → Preview deletions → Confirm → Delete → Update state
```
**Check the scope carefully**: `destroy` targets resources tracked in the selected state—including imported resources—not every resource in your AWS account. It deletes real infrastructure and can cause data loss; confirmation does not make deletion reversible.