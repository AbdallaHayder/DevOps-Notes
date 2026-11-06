module "network" {
  source = "./modules/network"
  # outputs become accessible as:
  # module.network.vpc_id
  # module.network.subnet_id
}

module "security" {
  source = "./modules/security"
  vpc_id = module.network.vpc_id
}

module "compute" {
  source = "./modules/compute"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.network.subnet_id
  security_group_id = module.security.security_group_id
  user_data         = file("${path.module}/user-data.sh")

  depends_on = [
    module.network,
    module.security
  ]
}