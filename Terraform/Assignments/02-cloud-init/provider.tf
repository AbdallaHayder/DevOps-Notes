terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.72.0"
    }
  }

  backend "s3" {
    bucket = "terraform-state-abdalla"
    key    = "cloud-init.tfstate"
    region = "eu-west-2"
  }
}


provider "aws" {
  region = "eu-west-2"
}