output "instance_id" {
  description = "ID of the cloud-init EC2 instance"
  value       = module.compute.instance_id
}

output "public_ip" {
  description = "Public IPv4 address of the EC2 instance"
  value       = module.compute.public_ip
}

output "website_url" {
  description = "URL of the NGINX homepage"
  value       = module.compute.website_url
}