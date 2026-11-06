# Terraform Importing Introduction

**Terraform import brings existing infrastructure under Terraform management without recreating it**. For example, you could import an EC2 instance originally created through the AWS console.

This is useful when adopting Terraform in a company that already has running infrastructure—you can manage those resources as code instead of deleting and rebuilding them.

For the **CLI import workflow taught here**, identify the existing resource, write its corresponding resource block, then import it into Terraform state:
```text
Existing AWS resource + Terraform resource block
                       ↓ import
              Linked in Terraform state
```
**Import links the resource to state; it doesn’t automatically make your configuration match it**. Review `terraform plan` afterward to identify differences before applying changes.