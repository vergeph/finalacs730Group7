output "dev_vpc_id" {
  value = module.vpc-dev.vpc_id
}

output "staging_vpc_id" {
  value = module.vpc-staging.vpc_id
}

output "prod_vpc_id" {
  value = module.vpc-prod.vpc_id
}

output "dev_public_subnet_ids" {
	value = module.vpc-dev.public_subnet_id
}

output "dev_private_subnet_ids" {
	value = module.vpc-dev.private_subnet_id
}

output "staging_public_subnet_ids" {
	value = module.vpc-staging.public_subnet_id
}

output "staging_private_subnet_ids" {
	value = module.vpc-staging.private_subnet_id
}

output "prod_public_subnet_ids" {
	value = module.vpc-prod.public_subnet_id
}

output "prod_private_subnet_ids" {
	value = module.vpc-prod.private_subnet_id
}

output "dev_security_group_id" {
	value = module.vpc-dev.security_group_id
}

output "staging_security_group_id" {
	value = module.vpc-staging.security_group_id
}


output "prod_security_group_id" {
	value = module.vpc-prod.security_group_id
}

#output "ansible_web_sg" {
#  value = aws_security_group.web_sg.id
#}


