# Terrafrom configuration and version 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-ganeshdevops-state"
    key    = "expense-backend-infra.tfstate" # we should have uniue key with in the bucket, same key should not be used in other repos or tf projects 
    region = "us-east-1"
    dynamodb_table = "terraform-ganeshdevops-locking"
    encrypt = true
  }
}

# AWS Provider configuration and version 
provider "aws" {
  region = "us-east-1"
}

