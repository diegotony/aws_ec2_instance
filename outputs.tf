output "public_ip" {
  value = aws_instance.ec2.public_ip
}

output "private_dns" {
  value = aws_instance.ec2.private_dns
}

output "id" {
  value = aws_instance.ec2.id
}
