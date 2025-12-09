# Network Module - Security Group
module "network" {
  source = "./modules/network"

  vpc_id                    = var.vpc_id
  security_group_name       = "jenkins_sg"
  security_group_description = "Allow Jenkins Traffic"
  jenkins_port              = var.jenkins_port
  jenkins_cidr_blocks       = var.jenkins_cidr_blocks
  ssh_cidr_blocks           = var.ssh_cidr_blocks
  tags                      = var.tags
}

# IAM Module - Role, Policy, and Instance Profile
module "iam" {
  source = "./modules/iam"

  role_name            = "jenkins_role"
  instance_profile_name = "jenkins_profile"
  policy_name          = "jenkins_policy"
  tags                 = var.tags
}

# Compute Module - EC2 Instance
module "compute" {
  source = "./modules/compute"

  instance_type            = var.instance_type
  key_name                 = var.key_name
  iam_instance_profile_name = module.iam.instance_profile_name
  security_group_ids       = [module.network.security_group_id]
  user_data                = file("${path.module}/install_jenkins.sh")
  instance_name            = "Jenkins"
  tags                     = var.tags
}
