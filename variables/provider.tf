# Terrafrom configuration and version 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# AWS Provider configuration and version 
provider "aws" {
  region = "us-east-1"
}
