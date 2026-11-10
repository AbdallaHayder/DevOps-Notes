# VPC configuration
moved {
  from = aws_vpc.cloud_init
  to   = module.network.aws_vpc.cloud_init
}

# Subnet configuration
moved {
  from = aws_subnet.public
  to   = module.network.aws_subnet.public
}

# IGW configuration
moved {
  from = aws_internet_gateway.cloud_init
  to   = module.network.aws_internet_gateway.cloud_init
}

# Public Subnet Route Table
moved {
  from = aws_route_table.public
  to   = module.network.aws_route_table.public
}

# Route Table associating to the subnet
moved {
  from = aws_route_table_association.public
  to   = module.network.aws_route_table_association.public
}

# Security Group Configuration
moved {
  from = aws_security_group.cloud_init
  to   = module.security.aws_security_group.cloud_init
}

# Security Group Inbound rule for HTTP, HTTPS, and SSH
moved {
  from = aws_vpc_security_group_ingress_rule.http
  to   = module.security.aws_vpc_security_group_ingress_rule.http
}

moved {
  from = aws_vpc_security_group_ingress_rule.https
  to   = module.security.aws_vpc_security_group_ingress_rule.https
}

moved {
  from = aws_vpc_security_group_ingress_rule.ssh
  to   = module.security.aws_vpc_security_group_ingress_rule.ssh
}

# Security Group Outbound rule 
moved {
  from = aws_vpc_security_group_egress_rule.outbound
  to   = module.security.aws_vpc_security_group_egress_rule.outbound
}

moved {
  from = aws_instance.cloud_init
  to   = module.compute.aws_instance.cloud_init
}