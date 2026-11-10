# VPC configuration
resource "aws_vpc" "cloud_init" {
  cidr_block           = "10.30.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "cloud-init-vpc"
  }
}

# Subnet configuration
resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.cloud_init.id
  cidr_block        = "10.30.1.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name = "cloud-init-public"
  }
}

# IGW configuration
resource "aws_internet_gateway" "cloud_init" {
  vpc_id = aws_vpc.cloud_init.id

  tags = {
    Name = "cloud-init-igw"
  }
}

# Public Subnet Route Table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.cloud_init.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cloud_init.id
  }

  tags = {
    Name = "cloud-init-public-rt"
  }
}

# Route Table associating to the subnet
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}