output "security_group_id" {
  description = "ID of the WordPress security group"
  value = aws_security_group.wordpress.id
}