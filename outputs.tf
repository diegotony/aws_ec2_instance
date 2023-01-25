output "public_ip" {
  value = aws_instance.this.public_ip
}

output "private_dns" {
  value = aws_instance.this.private_dns
}

output "id" {
  value = aws_instance.this.id
}

output "primary_network_interface_id" {
  value = aws_instance.this.primary_network_interface_id
}

output "ami" {
  value = aws_instance.this.ami
}

output "security_groups" {
  value = aws_instance.this.security_groups
}