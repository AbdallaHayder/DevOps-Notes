variable "instance_type" {
  type        = string
  default = "t2.micro"
}

locals {
  instance_ami = "ami-0bce970415466784a"
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.this.id
}