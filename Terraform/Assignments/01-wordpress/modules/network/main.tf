# VPC configuration
resource "aws_vpc" "wordpress" {
  cidr_block           = "10.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "wordpress-vpc"
  }
}

# Subnet configuration
resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.wordpress.id
  cidr_block        = "10.20.1.0/24"
  availability_zone = "eu-west-2a"
  tags = {
    Name = "wordpress-public"
  }
}

# IGW configuration
resource "aws_internet_gateway" "wordpress" {
  vpc_id = aws_vpc.wordpress.id
  tags = {
    Name = "wordpress-igw"
  }
}

# Public Subnet route table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.wordpress.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.wordpress.id
  }

  tags = {
    Name = "wordpress-public-rt"
  }
}

# Route Table associating to the subnet
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

