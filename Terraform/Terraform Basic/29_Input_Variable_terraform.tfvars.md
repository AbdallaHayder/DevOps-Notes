# Input Variable - terraform.tfvars

**A default value avoids Terraform asking you for input**. In `variables.tf`, you can define:
```text
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
```
Alternatively, keep the variable declaration in **`variables.tf`** and supply its value in a separate **`terraform.tfvars`** file:
```text
# terraform.tfvars
instance_type = "t2.micro"
```
Terraform automatically loads `terraform.tfvars` from the project folder. Its value **overrides the variable’s default**, if one exists.
```text
variables.tf       → Declares the input
terraform.tfvars   → Supplies its value
ec2.tf             → Uses var.instance_type
```

Changing a hard-coded value into a variable should leave existing infrastructure unchanged **if the resulting value stays the same**.

**You can verify this with `terraform plan`; `apply` isn’t required**. In your current project, both instances were destroyed, so you should still expect **2 to add**—don’t apply merely to test variable loading.