provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "acs730-final-project"              // Bucket where to SAVE Terraform State
    key    = "default/servers/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
    region = "us-east-1"                         // Region where bucket is created
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = "~> 1.2.5"
}



data "terraform_remote_state" "network" { // This is to use Outputs from Remote State
  backend = "s3"
  config = {
    bucket = "acs730-final-project"              // Bucket from where to GET Terraform State
    key    = "default/network/terraform.tfstate" // Object name in the bucket to GET Terraform State
    region = "us-east-1"                         // Region where bucket created
  }
}


