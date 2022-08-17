# Default tags
variable "default_tags" {
  default = {
    "Owner" = "khryu",
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be applied to all AWS resources"
}

output "vpc_dev_id" {
  value = module.vpc-dev.vpc_id
}

output "vpc_staging_id" {
  value = module.vpc-staging.vpc_id
}

output "vpc_prod_id" {
  value = module.vpc-prod.vpc_id
}


# Provision public subnets in Dev VPC
variable "dev_public_subnet_cidrs" {
  default = ["10.100.1.0/24", "10.100.2.0/24", "10.100.3.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}
# Provision public subnets in customer VPC
variable "dev_private_subnet_cidrs" {
  default = ["10.100.10.0/24", "10.100.20.0/24", "10.100.30.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# Provision public subnets in Staging VPC
variable "staging_public_subnet_cidrs" {
  default = ["10.200.1.0/24", "10.200.2.0/24", "10.200.3.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}
# Provision private subnets in Staging VPC
variable "staging_private_subnet_cidrs" {
  default = ["10.200.10.0/24", "10.200.20.0/24", "10.200.30.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# Provision public subnets in prod VPC
variable "prod_public_subnet_cidrs" {
  default = ["10.250.1.0/24", "10.250.2.0/24", "10.250.3.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}
# Provision private subnets in prod VPC
variable "prod_private_subnet_cidrs" {
  default = ["10.250.10.0/24", "10.250.20.0/24", "10.250.30.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}
# VPC CIDR range
variable "dev_vpc_cidr" {
  default     = "10.100.0.0/16"
  type        = string
  description = "VPC to host static web site"
}


# VPC CIDR range
variable "staging_vpc_cidr" {
  default     = "10.200.0.0/16"
  type        = string
  description = "VPC to host static web site"
}


# VPC CIDR range
variable "prod_vpc_cidr" {
  default     = "10.250.0.0/16"
  type        = string
  description = "VPC to host static web site"
}



# Variable to signal the current environment
variable "dev_env" {
  default     = "dev"
  type        = string
  description = "Deployment Environment"
}

# Variable to signal the current environment
variable "staging_env" {
  default     = "staging"
  type        = string
  description = "Deployment Environment"
}

# Variable to signal the current environment
variable "prod_env" {
  default     = "prod"
  type        = string
  description = "Deployment Environment"
}
# Variable to use as a name prefix
variable "prefix" {
  type = string
  #  default     = "assignement2"
  default     = "final-project"
  description = "Name prefix"
}



