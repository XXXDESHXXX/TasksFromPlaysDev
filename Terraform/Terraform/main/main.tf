# Provider
module "vpc" {
  source = "../modules/aws_vpc"
}

module "security_groups" {
  source   = "../modules/aws_sg"
  vpc_id   = module.vpc.vpc_id
  vpc_cidr = module.vpc.vpc_cidr
}

module "ec2" {
  source            = "../modules/aws_ec2"
  public_subnet_id  = module.vpc.public_subnet_ids
  public_sg_id      = module.security_groups.public_security_group_id
  private_subnet_id = module.vpc.private_subnet_ids
}

module "rds_postgressql" {
  source            = "../modules/aws_rds"
  public_sg_id = module.security_groups.public_security_group_id
  public_subnet_id = module.vpc.public_subnet_ids
}