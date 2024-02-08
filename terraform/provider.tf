terraform {
  required_providers {
    aws = {
     source = "hashicorp/aws"
     version = "5.31.0"
    }
  }


  backend "s3" {
    bucket = "gopi-vpc"
    key    = "catalogue-deploy"
    region = "us-east-1"
    dynamodb_table = "gopi-vpc-locking"
  }
}

provider "aws" {
    region = "us-east-1"
}   