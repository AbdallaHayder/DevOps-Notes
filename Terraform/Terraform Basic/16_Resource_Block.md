# Resource Block

A **resource block** describes infrastructure you want Terraform to manage, such as an EC2 instance, database, or security group. Its contents define the resource’s desired settings.

This illustrative example belongs in a Terraform `.tf` file:
```text
resource "aws_instance" "test" {
  ami           = "ami-REPLACE_WITH_VALID_ID"
  instance_type = "t2.micro"

  tags = {
    Name        = "test-server"
    Environment = "dev"
  }
}
```

**`aws_instance`** is the resource type supplied by the AWS provider. **`test`** is its local Terraform name, giving it the address `aws_instance.test`; it does not automatically name the instance in AWS.

Inside the block, **`ami`** selects the machine image, including its operating system, while **`instance_type`** selects the hardware profile, such as CPU and memory. **Tags** label resources so you can identify their purpose or environment.

The AMI above is a placeholder and must match your AWS region. The lesson’s “free tier” description is not a pricing guarantee—for your account, continue assuming paid usage.