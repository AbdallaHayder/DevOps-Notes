# Output Variable

**Output values expose useful information from your infrastructure**, such as an EC2 instance ID or IP address. You can read them after `terraform apply` or use them in automation and other Terraform configurations.

The lecturer defines an output for his resource named `this`:
```text
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.this.id
}
```
**`aws_instance.this.id`** means: take the resource type `aws_instance`, select the resource named `this`, and retrieve its `id` attribute.
```text
EC2 resource → Read its .id → Display as instance_id
```
He runs `terraform plan`, then `terraform apply`. Because his instance already exists and matches the configuration, **no infrastructure changes are needed**—Terraform records the output and displays its value.

Use **clear output names and descriptions**, and expose information that serves a useful purpose. For sensitive values, `sensitive = true` hides them from normal terminal display, but **does not remove them from state**.

**For your project**: check the plan before following his apply step. If your instances were destroyed, `apply` would recreate them as well as produce the output.