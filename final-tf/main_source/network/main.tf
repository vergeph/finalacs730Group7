# Create Dev VPC

module "vpc-dev" {
#  source             = "../../../final-project/aws_network/"
 source   = "git@github.com:vergeph/finalacs730Group7.git//aws_network"
  env                = var.dev_env
  vpc_cidr           = var.dev_vpc_cidr
  public_cidr_blocks = var.dev_public_subnet_cidrs
  private_cidr_blocks = var.dev_private_subnet_cidrs
  prefix       = var.prefix
  default_tags = var.default_tags
}

# Create Staging VPC
module "vpc-staging" {
#  source             = "../../../final-project/aws_network/"
 source   = "git@github.com:vergeph/finalacs730Group7.git//aws_network"
  env                = var.staging_env
  vpc_cidr           = var.staging_vpc_cidr
  public_cidr_blocks = var.staging_public_subnet_cidrs
  private_cidr_blocks = var.staging_private_subnet_cidrs
  prefix       = var.prefix
  default_tags = var.default_tags
}

# Create Prod VPC
module "vpc-prod" {
#  source             = "../../../final-project/aws_network/"
 source   = "git@github.com:vergeph/finalacs730Group7.git//aws_network"
  env                = var.prod_env
  vpc_cidr           = var.prod_vpc_cidr
  public_cidr_blocks = var.prod_public_subnet_cidrs
  private_cidr_blocks = var.prod_private_subnet_cidrs
  prefix       = var.prefix
  default_tags = var.default_tags
}
