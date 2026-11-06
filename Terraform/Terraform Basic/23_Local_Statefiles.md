# Local Statefiles

**Local state means Terraform stores its infrastructure record on your own machine**. By default, it uses a file named **`terraform.tfstate`** in the project directory.

For your demo, that would normally be:
```text
~/DevOps-Notes/Terraform/Practice/first-ec2/terraform.tfstate
```
It requires **no extra backend configuration**, making it straightforward for learning, small projects, and one person managing infrastructure.

The limitation is collaboration: teammates don’t automatically share that local file, so coordinating changes becomes harder.

**Protect your state file**: it can contain sensitive data. Keep it out of Git, and don’t delete it while Terraform still manages live resources.