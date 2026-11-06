output "vpc_id" {
  description = "ID of the WordPress VPC"
  value       = aws_vpc.wordpress.id
}

output "subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}