# Build an auto-scailing configuration for Dev VPC

module "dev-auto" {
  	source = "../../../final-project/aws_servers/"
#  source             = "git@github.com:kyunghoryu/final-project-acs730.git//aws_servers"
  env                = var.dev_env
  public_subnet_ids  = data.terraform_remote_state.network.outputs.dev_public_subnet_ids
  private_subnet_ids = data.terraform_remote_state.network.outputs.dev_private_subnet_ids
  security_groups    = [data.terraform_remote_state.network.outputs.dev_security_group_id]
  vpc_id             = data.terraform_remote_state.network.outputs.vpc_dev_id
  prefix             = var.prefix
  default_tags       = var.default_tags
}

module "staging-auto" {
  	source = "../../../final-project/aws_servers/"
#  source             = "git@github.com:kyunghoryu/final-project-acs730.git//aws_servers"
  env                = var.staging_env
  public_subnet_ids  = data.terraform_remote_state.network.outputs.staging_public_subnet_ids
  private_subnet_ids = data.terraform_remote_state.network.outputs.staging_private_subnet_ids
  security_groups    = [data.terraform_remote_state.network.outputs.staging_security_group_id]
  vpc_id             = data.terraform_remote_state.network.outputs.vpc_staging_id
  prefix             = var.prefix
  default_tags       = var.default_tags
}

module "prod-auto" {
  	source = "../../../final-project/aws_servers/"
#  source             = "git@github.com:kyunghoryu/final-project-acs730.git//aws_servers"
  env                = var.prod_env
  public_subnet_ids  = data.terraform_remote_state.network.outputs.prod_public_subnet_ids
  private_subnet_ids = data.terraform_remote_state.network.outputs.prod_private_subnet_ids
  security_groups    = [data.terraform_remote_state.network.outputs.prod_security_group_id]
  vpc_id             = data.terraform_remote_state.network.outputs.vpc_prod_id
  prefix             = var.prefix
  default_tags       = var.default_tags
}

