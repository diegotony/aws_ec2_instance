locals {
  security_groups = var.security_groups
  tags = merge(var.tags, { "Name" = "${var.name}" })
}

resource "aws_instance" "this" {
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = var.security_groups != null ? [] : []
  key_name        = var.key_name
  user_data       = var.user_data
  tags            = local.tags
}

output "name" {
  value = "Hey MY PUBLIC IP ${aws_instance.this.public_ip}"
}
