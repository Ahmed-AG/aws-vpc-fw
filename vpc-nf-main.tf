provider "aws" {
  region = "us-east-1"
}

terraform {
backend "local" {
    path = "./my-vpc.tfstate"
 }
}

module "vpc-nf" {
  source = "./modules/vpc-nf"
  environment_tag = "test"
}

