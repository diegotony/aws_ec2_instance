locals {
  security_groups = var.sg_name ? var.security_groups : concat(var.security_groups, aws_security_group.this.name )
  tags            = merge(var.tags, { "Name" = "${var.name}" })
  
}

resource "aws_instance" "this" {
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = local.security_groups 
  key_name        = var.key_name
  user_data       = var.user_data
  tags            = merge(local.tags, var.tags)
}

output "name" {
  value = "Hey MY PUBLIC IP ${aws_instance.this.public_ip}"
}
