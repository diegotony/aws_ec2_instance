data "aws_ami" "this" {
  most_recent = true

  dynamic "filter"{
    for_each = var.filters
    name = filter.value.name
    values = filter.value.values
  }

  owners = var.owners
}
