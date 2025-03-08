variable "region" {
    description = "AWS region"
    type = string
    default = "ap-south-1"
}

variable "Name" {
    description = "Instance Name"
    type = string
    default = "value"
  
}

variable "vpc_id" {
    description = "Existing VPC ID"
    type = string
    
  
}

variable "subnet_id" {
    description = "Existing subnet ID"
    type = string
  
}

variable "key_name" {
    description = "Existing AWS KEY"
    type = string
  
}

variable "security_groups" {
    description = "security id"
    type = string
  
}

variable "instance_type" {
    description = "EC2 instance type"
    default = "t2.micro"
    type = string
  
}

variable "private_ip" {
    description = "Custom private ip"
    type = string
    
}

variable "root_volume_size" {
    description = "Size of root volume"
    type = number
    default = 8
  
}

variable "extra_volume_size" {
    description = "Size ofextra volume"
    type = number
    default = 1
  
}

variable "iam_instance_profile" {
    description = "IAM Instance profile Name"
    type = string
  
}

variable "ami" {
 description = "Custom AMI"
 type = string
 default = "ami-05c179eced2eb9b5b"

}
