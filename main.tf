resource "aws_instance" "this" {
  ami             = var.ami != "" ? var.ami : data.aws_ami.this.id
  instance_type   = var.instance_type
  security_groups = var.security_groups
  key_name        = var.key_name
  user_data       = var.user_data
  tags            = var.tags
}

output "name" {
  value = "Hey MY PUBLIC IP ${aws_instance.this.public_ip}"
}
