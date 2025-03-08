provider "aws" {
  region = var.region
}

#EC2 Instance hello
resource "aws_instance" "EC2" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.key_name
  vpc_security_group_ids = length(var.security_groups) > 0 ? [var.security_groups] : null
  
  private_ip = var.private_ip != "" ? var.private_ip : null
  iam_instance_profile = var.iam_instance_profile
  
  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  #ebs_block_device {
   # device_name = "/dev/sdb"
    #volume_size = var.extra_volume_size
    #volume_type = "gp3"
  #}

  tags = {
    Name = var.Name 
  }

  
  
}

