terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.23"
    }
  }
  backend "s3" {
    bucket         = "staticsite-vm-multicloud-bia1"
    key            = "terraform.tfstate"
    dynamodb_table = "staticsite-vm-multicloud-bia1"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}