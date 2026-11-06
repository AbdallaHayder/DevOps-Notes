# Terraform apply

**`terraform apply` carries out infrastructure changes**, creating, updating, or deleting resources to match your configuration.

When you run it normally, Terraform generates a **fresh execution plan** and asks for confirmation. Review the changes, then type **`yes`** to proceed—it does not automatically reuse an earlier `terraform plan`.
```text
terraform init → terraform plan → terraform apply
Prepare          Preview          Review → Confirm → Execute
```
In the lesson’s example, applying creates an EC2 instance, modifies a security group, and deletes an S3 bucket. Terraform then **updates its state** to record the resources and changes it manages.

**`plan` shows what would happen; `apply` makes it happen**. Always check the plan displayed before confirming.