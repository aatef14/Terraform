terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.90.0"
    }
  }
}

provider "aws" {
  region = local.region
}

resource "aws_vpc" "myVpc" {
    tags = {
      Name = Terra-vpc
    }
    cidr_block = local.cidr_block_vpc

  
}

resource "aws_subnet" "Public1a" {
    tags = {
        Name = "pub1a"
    }
    vpc_id = aws_vpc.myVpc.id
    cidr_block = local.cidr_block_pub1a
    availability_zone = var.az1a
  
}