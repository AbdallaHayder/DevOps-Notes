# Local Variable

**Local values give a name to values reused inside your Terraform configuration**. They can hold fixed values or calculated results, helping avoid repetition and keep code **DRY: “Don’t Repeat Yourself**.”

Unlike input variables, which accept values from outside the configuration, **locals are defined internally** and aren’t assigned through `terraform.tfvars`.

The lecturer centralizes the repeated AMI ID in a `locals` block. Using your AMI as the example:
```text
locals {
  instance_ami = "ami-0bce970415466784a"
}
```
Both EC2 resource blocks can then reference it:
```text
ami = local.instance_ami
```
Notice the naming: **`locals`** declares the block, but **`local.instance_ami`** references the value. The block can go in any `.tf` file in the same folder; the lecturer puts it in `variables.tf`.

**Input**: `var.instance_type` — a configurable choice supplied to the configuration.

**Local**: `local.instance_ami` — a reusable value defined inside the configuration.

He runs `terraform plan` and gets **“No changes”** because the AMI value stayed identical. If you’ve destroyed your instances, your plan would instead propose recreating them—the refactor doesn’t restore deleted infrastructure.