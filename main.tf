rvariable "region" {
  type    = string
  default = "us-west-2"
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
  access_key = {}
  secret_key = {}
}

module "vpc" {
  source  = "bmfernand/vpc-test/aws"
  version = "1.0.2"
  # insert required variables here
  cidr = "10.100.0.0/16"
  public_subnet = "10.100.0.0/24"
  private_subnet = "10.100.1.0/24"
  vpc_name = "vpc-bf-teste"
}