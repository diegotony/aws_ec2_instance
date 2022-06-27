output "public_ip" {
  value = aws_instance.this.public_ip
}

output "private_dns" {
  value = aws_instance.this.private_dns
}

output "id" {
  value = aws_instance.this.id
}
