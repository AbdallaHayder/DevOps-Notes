# Testing your Importing Knowledge

The lecturer **manually creates an Ubuntu EC2 instance**, then prepares to bring it under Terraform management using its instance ID.

In **`ec2.tf`**, he adds another resource block named **`import`**, alongside his existing block named `this`. The new block specifies the manually created instance’s AMI and instance type:
```text
resource "aws_instance" "import" {
  ami           = "AMI_ID_OF_EXISTING_INSTANCE"
  instance_type = "t2.micro"
}
```
In the **terminal inside the Terraform project folder**, the import command must use that exact resource address:
```text
terraform import aws_instance.import INSTANCE_ID
```
Replace `INSTANCE_ID` with the ID copied from the EC2 console. `aws_instance.import` is the Terraform address; it is separate from the instance’s AWS Name tag.
```text
Manually created EC2 → Import → Tracked in Terraform state
```
**Import fills in state, not your .`tf` file**. The slide’s “attributes will be populated” comment refers to state. After importing, run `terraform plan` and adjust the configuration until it proposes **no changes**.

Also, Terraform does **not** automatically track every instance in the account. The manually created instance remains unmanaged until you import it.