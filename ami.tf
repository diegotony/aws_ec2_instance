data "aws_ami" "this" {
  most_recent = true

  dynamic "filter"{
    for_each = var.filters
    name = filter.name
    values = filter.values
  }

  owners = var.owners
}
