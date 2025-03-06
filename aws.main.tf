terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.89.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terra" {
    ami="ami-0d682f26195e9ec0f"
    instance_type = "t2.micro"
    iam_instance_profile = "SSM-EC2"
    subnet_id = "subnet-0b447a3ba894168f9"
    vpc_security_group_ids = ["sg-0c098d0659f677188"]
}

resource "aws_vpc" "name" {
  
}