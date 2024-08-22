output "aws_vpc_id" {
  value = module.vpc.vpc_id
}

output "aws_vpc_cidr" {
  value = module.vpc.vpc_cidr
}

output "aws_public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "aws_private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "aws_public_security_group_id" {
  value = module.security_groups.public_security_group_id
}

output "aws_public_instances_ids" {
  value = module.ec2.public_instances_ids
}

output "aws_private_instances_ids" {
  value = module.ec2.private_instances_ids
}

output "aws_rds_hostname" {
  value = module.rds_postgressql.rds_hostname
}

output "aws_rds_port" {
  value = module.rds_postgressql.rds_port
}