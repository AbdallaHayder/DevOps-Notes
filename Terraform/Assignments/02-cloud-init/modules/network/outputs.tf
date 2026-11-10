output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.cloud_init.id
}

output "subnet_id" {
  description = "The subnet id"
  value       = aws_subnet.public.id
}