variable "ami_id" {
  description = "Ubuntu 24.04 x86_64 AMI ID in eu-west-2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Existing EC2 key-pair name for SSH verification"
  type        = string
}