terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      Version = "~>3.27"
    }
  }
required_version = ">=0.14.9"
}

provider "aws" {
  version = "~>3.0"
  region  = "us-west-2"
}
resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Actions-test"
  }
}