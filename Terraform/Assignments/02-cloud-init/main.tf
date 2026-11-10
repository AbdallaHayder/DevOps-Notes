module "network" {
  source = "./modules/network"
}

module "security" {
  source = "./modules/security"
  vpc_id = module.network.vpc_id
}

# EC2 instance configuration
module "compute" {
  source = "./modules/compute"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.network.subnet_id
  security_group_id = module.security.security_group_id
  key_name          = var.key_name
  user_data         = file("${path.module}/cloud-init.yaml")

  depends_on = [
    module.network,
    module.security
  ]
}
