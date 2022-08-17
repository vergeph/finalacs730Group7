# Define the provider as AWS service with S3 bucket storing terraform.tfstate

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "acs730-final-project1"          // Bucket where to SAVE Terraform State
    key    = "default/network/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
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
