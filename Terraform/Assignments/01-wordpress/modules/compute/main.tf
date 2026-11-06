# EC2 instance configuration
resource "aws_instance" "wordpress" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  associate_public_ip_address = true
  key_name                    = "assignment1-key" # for SSH access
  user_data                   = var.user_data
  
  tags = {
    Name = "wordpress-server"
  }
}