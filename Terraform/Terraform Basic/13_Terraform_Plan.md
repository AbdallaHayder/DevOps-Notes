# Terraform plan

**`terraform plan` previews infrastructure changes before you apply them**. It reads your configuration—the desired state—and uses Terraform state plus provider checks of existing infrastructure to work out what needs to change. It does not carry out those changes.

Read the symbols beside each resource:
| Symbol | Meaning | Lesson example |
|---|---|---|
| `+` | Create | Add an EC2 instance |
| `~` | Update in place | Change a security-group rule from port 80 to 443 |
| `-` | Destroy | Delete an S3 bucket |
| `-/+` | Replace | Delete a resource and recreate it |

The **summary at the bottom** gives the overall totals:
```text
Plan: 1 to add, 1 to change, 1 to destroy.
```
Compare these totals with your intention, then inspect the individual changes. If you only intended to add an EC2 instance, an unexpected bucket deletion needs investigation.

**Review both the summary and the details**. Zero deletions alone does not mean a change is safe—a security-group update could still disrupt access. Once the plan matches your intention, proceed to `terraform apply`.