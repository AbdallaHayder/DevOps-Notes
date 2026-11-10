output "instance_id" {
  description = "ID of the cloud-init EC2 instance"
  value       = aws_instance.cloud_init.id
}

output "public_ip" {
  description = "Public IPv4 address of the EC2 instance"
  value       = aws_instance.cloud_init.public_ip
}

output "website_url" {
  description = "URL of the NGINX homepage"
  value       = "http://${aws_instance.cloud_init.public_ip}"
}