output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.compute.instance_id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.compute.public_ip
}

output "website_url" {
  description = "The website URL"
  value       = module.compute.website_url
}