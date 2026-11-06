# Tips for using Terraform

**Use the documentation regularly**. HashiCorp’s Terraform documentation explains the tool and its concepts. The Terraform Registry provides documentation for providers and their resources—for example, the settings available when defining an AWS EC2 instance.

**Validate and review changes before applying them**. `terraform validate` checks whether your configuration is structurally valid and internally consistent. `terraform plan` previews proposed infrastructure changes; inspect it carefully for unexpected updates or deletions.

**Start small, then improve**. Build an **MVP (minimum viable product)**: the smallest working configuration that meets your goal. Once it works, introduce variables and reusable modules as needed.

**Keep your code DRY: “Don’t Repeat Yourself.**”
Reuse common configuration through modules instead of copying the same blocks repeatedly. This makes future changes easier to maintain.