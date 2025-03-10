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

resource "aws_subnet" "Private1a" {
    tags = {
        Name = "pvt1a"
    }
    vpc_id = aws_vpc.myVpc.id
    cidr_block = local.cidr_block_pvt1a
    availability_zone = var.az1a
  
}

resource "aws_subnet" "Public1b" {
    tags = {
        Name = "pub1b"
    }
    vpc_id = aws_vpc.myVpc.id
    cidr_block = local.cidr_block_pub1b
    availability_zone = var.az1a
  
}

resource "aws_subnet" "Private1b" {
    tags = {
        Name = "pvt1b"
    }
    vpc_id = aws_vpc.myVpc.id
    cidr_block = local.cidr_block_pvt1b
    availability_zone = var.az1a
  
}

resource "aws_subnet" "Public1c" {
    tags = {
        Name = "pub1c"
    }
    vpc_id = aws_vpc.myVpc.id
    cidr_block = local.cidr_block_pub1c
    availability_zone = var.az1a
  
}

resource "aws_subnet" "Private1c" {
    tags = {
        Name = "pvt1c"
    }
    vpc_id = aws_vpc.myVpc.id
    cidr_block = local.cidr_block_pvt1c
    availability_zone = var.az1a
  
}