# Input Variables

**Input variables let you supply values without changing the resource configuration**. The lecturer finds their syntax in HashiCorp’s documentation under **Configuration Language** → **Input Variables**, then creates a **`variables.tf`** file.

For his EC2 example, he declares an instance-type variable:
```text
variable "instance_type" {
  type = string
}
```

He replaces the hard-coded `"t2.micro"` in both EC2 resource blocks with:

```text
instance_type = var.instance_type
```

**`var.instance_type` references the variable’s value**. Both resources can reuse it, and variable names must be unique within the same module.

Because he hasn’t supplied a value or declared a default, **`terraform plan` prompts him to enter one**:
```text
var.instance_type
  Enter a value: t2.micro
```

**At this interactive string prompt, type `t2.micro` without quotes**. Quotes entered here become part of the value. In a .tf file, a literal string such as `default = "t2.micro"` does require quotes.

Adding that default inside the variable block would let Terraform use `t2.micro` without prompting, unless another value overrides it.