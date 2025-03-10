variable "region" {
  type = string
 
}

variable "vpcCider" {
    type = string
    
}


variable "az1a" {
    type = string
    default = "ap-south-1a"
}

variable "az1b" {
    type = string
    default = "ap-south-1b"
}

variable "az1c" {
    type = string
    default = "ap-south-1c"
}

variable "pub1a" {
    type = string
    
  
}

variable "pvt1a" {
    type = string
   
  
}

variable "pub1b" {
    type = string
    
  
}

variable "pvt1b" {
    type = string
    
  
}

variable "pub1c" {
    type = string
    
  
}

variable "pvt1c" {
    type = string
    
  
}


locals {
  region = coalesce(var.region,"ap-south-1")
  cidr_block_vpc = coalesce(var.vpcCider,"10.0.0.0/16")
  cidr_block_pub1a = coalesce(var.pub1a,"10.0.1.0/24")
  cidr_block_pvt1a = coalesce(var.pvt1a,"10.0.2.0/24")
  cidr_block_pub1b = coalesce(var.pub1b,"10.0.3.0/24")
  cidr_block_pvt1b = coalesce(var.pvt1b,"10.0.4.0/24")
  cidr_block_pub1c = coalesce(var.pub1c,"10.0.5.0/24")
  cidr_block_pvt1c = coalesce(var.pvt1c,"10.0.6.0/24")
}

