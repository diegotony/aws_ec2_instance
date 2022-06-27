data "aws_ami" "this" {
  most_recent = true

  dynamic "filter"{
    for_each = toset(var.filter)
    name = each.value.name
    values = each.value.values
  }

  owners = var.owners
}
