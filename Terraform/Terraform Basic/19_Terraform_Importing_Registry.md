# Terraform Importing - Terraform Registry

The **Terraform Registry’s “Import” section** explains how to import each resource type. For an EC2 instance, you need its existing **instance ID**.

The lecturer’s example runs this in the **terminal inside the Terraform project folder**:
```text
terraform import aws_instance.web i-12345678
```
Here, **`aws_instance.web`** identifies the resource block in your `.tf` configuration, and **`i-12345678`** represents the existing EC2 instance’s ID. Import links them in Terraform state; it does not create another instance.

The screenshot also shows an alternative **`import` block**, written inside a .`tf` file:
```text
import {
  to = aws_instance.web
  id = "i-12345678"
}
```
These are **two alternative methods**, not steps to run together. The block method is processed through `plan` and `apply`.

After importing, run **`terraform plan`** and adjust your resource configuration to match the existing instance.

**The goal is “No changes**.” You’re bringing the instance under Terraform management while preserving it—not accidentally modifying, replacing, or deleting it.