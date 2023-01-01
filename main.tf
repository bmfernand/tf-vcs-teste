// merda001
variable "region" {
  type    = string
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}

provider "aws" {
  region = var.region
//  access_key = var.access_key
//  secret_key = var.secret_key
}

module "vpc" {
  source  = "bmfernand/vpc-test/aws"
  version = "1.0.2"
  # insert required variables here
  cidr = "10.102.0.0/16"
  public_subnet = "10.102.1.0/24"
  private_subnet = "10.102.2.0/24"
  vpc_name = "vpc-bf-teste103"
}
