# Variables

**Input variables make Terraform configurations flexible and reusable**. Instead of repeating values such as AMI IDs, instance types, or regions, define them once and reference them where needed. This supports **DRY: “Don’t Repeat Yourself.**”

Variables can be declared in any `.tf` file, but keeping declarations in **`variables.tf`** makes them easier to organize.

The slide’s example, with Terraform syntax corrected and its AMI represented by a placeholder:

**`variables.tf`** — declare the input variable:
```text
variable "ami-id" {
  type    = string
  default = "ami-REPLACE_WITH_VALID_ID"
}
```
**`ec2.tf`** — reference it in the resource:
```text
resource "aws_instance" "first" {
  instance_type = "t2.micro"
  ami           = var.ami-id

  tags = {
    Name = "Helloworld"
  }
}
```
**`type = string`** means the value is text. **`default`** supplies a value when no alternative is provided. **`var.ami-id`** reads that variable’s value—without quotation marks.

Both files belong in the **same Terraform folder**. Terraform reads them together, so multiple resource blocks can reference the same variable instead of repeating the AMI ID.