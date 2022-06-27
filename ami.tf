data "aws_ami" "this" {
  most_recent = true

  dynamic "filter"{
    for_each = var.filter
    name = var.filter.name
    values = var.filter.values
  }

  owners = var.owners
}

