# Instance type
variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  type = map(string)

  default = {
    "amazon-sub01" = "ami-065efef2c739d613b"
    "ubuntu-sub01" = "ami-08d4ac5b634553e16"
    "amazon-sub02" = "ami-065efef2c739d613b"
    "ubuntu-sub02" = "ami-08d4ac5b634553e16"
  }
}

# Default tags
variable "default_tags" {
  default = {
    "Owner" = "khryu"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}


variable "prefix" {
  type        = string
  default     = "final-project"
  description = "Name prefix"
}

# Variable to signal the current environment 
variable "dev_env" {
  default = "dev"
  #  default     = "amazon"
  type        = string
  description = "Deployment Environment"
}

# Variable to signal the current environment 
variable "staging_env" {
  default = "staging"
  #  default     = "ubuntu"
  type        = string
  description = "Deployment Environment"
}

# Variable to signal the current environment 
variable "prod_env" {
  default = "prod"
  #  default     = "amazon"
  type        = string
  description = "Deployment Environment"
}




