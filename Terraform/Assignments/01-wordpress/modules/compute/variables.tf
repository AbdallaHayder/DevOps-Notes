variable "ami_id" {
  description = "Ubuntu AMI ID for the London region"
  type        = string
}

variable "instance_type" {
  description = "Selecting the EC2 instance size"
  type        = string
}

variable "user_data" {
  description = "Instance bootstrap script contents"
  type        = string
}

variable "subnet_id" {
  description = "Subnet where the instance will launch"
  type = string
}

variable "security_group_id" {
  description = "Security group attached to the instance"
  type = string
}