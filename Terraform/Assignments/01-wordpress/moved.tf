# VPC Module
# VPC configuration 
moved {
  from = aws_vpc.wordpress
  to   = module.network.aws_vpc.wordpress
}

# Subnet configuration
moved {
  from = aws_subnet.public
  to   = module.network.aws_subnet.public
}

# IGW configuration
moved {
  from = aws_internet_gateway.wordpress
  to   = module.network.aws_internet_gateway.wordpress
}

# Public Subnet route table
moved {
  from = aws_route_table.public
  to   = module.network.aws_route_table.public
}

# Route Table associating to the subnet
moved {
  from = aws_route_table_association.public
  to   = module.network.aws_route_table_association.public
}


# Security Module 
# Security Group Configuration
moved {
  from = aws_security_group.wordpress
  to   = module.security.aws_security_group.wordpress
}

# Security Group Inbound rule http
moved {
  from = aws_vpc_security_group_ingress_rule.http
  to   = module.security.aws_vpc_security_group_ingress_rule.http
}

# Security Group Inbound rule https
moved {
  from = aws_vpc_security_group_ingress_rule.https
  to   = module.security.aws_vpc_security_group_ingress_rule.https
}

# Security Group Inbound rule SSH
moved {
  from = aws_vpc_security_group_ingress_rule.ssh
  to   = module.security.aws_vpc_security_group_ingress_rule.ssh
}

# Security Group Outbound rule 
moved {
  from = aws_vpc_security_group_egress_rule.outbound
  to   = module.security.aws_vpc_security_group_egress_rule.outbound
}

# Compute Module
moved {
  from = aws_instance.wordpress
  to   = module.compute.aws_instance.wordpress
}