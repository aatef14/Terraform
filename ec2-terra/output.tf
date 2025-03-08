output "Name" {
    value = aws_instance.EC2.tags
  
}

output "Instance_ID" {
    value = aws_instance.EC2.id
}
output "private_ip" {
    value = aws_instance.EC2.private_ip
  
}

output "key_name" {
    value = aws_instance.EC2.key_name
  
}