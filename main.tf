// merda001

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
/*  cidr = var.cidr
  public_subnet = var.public_subnet
  private_subnet = var.private_subnet
  vpc_name = var.vpc_name */
}
