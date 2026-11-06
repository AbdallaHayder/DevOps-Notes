# Security Group Configuration
resource "aws_security_group" "wordpress" {
  name        = "wordpress-web"
  description = "Web access for the WordPress server"
  vpc_id      = var.vpc_id

  tags = {
    Name = "wordpress-web-sg"
  }
}

# Security Group Inbound rule and SSH
resource "aws_vpc_security_group_ingress_rule" "http" {
  description       = "Allow HTTP web traffic"
  security_group_id = aws_security_group.wordpress.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}

resource "aws_vpc_security_group_ingress_rule" "https" {
  description       = "Allow HTTPS web traffic"
  security_group_id = aws_security_group.wordpress.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 443
  ip_protocol = "tcp"
  to_port     = 443
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {
  description       = "Allow SSH from my public IPv4"
  security_group_id = aws_security_group.wordpress.id

  cidr_ipv4   = "188.49.160.108/32"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

# Security Group Outbound rule 
resource "aws_vpc_security_group_egress_rule" "outbound" {
  description       = "Allow outbound IPv4 traffic"
  security_group_id = aws_security_group.wordpress.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1"
}