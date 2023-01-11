resource "aws_ebs_volume" "this" {
    count = var.ebs_name ? 1 : 0
    availability_zone = aws_instance.this.availability_zone
    size = var.ebs_size
    tags = local.tags  
}

resource "aws_volume_attachment" "ebsAttach" {
    count = var.ebs_name ? 1 : 0
    device_name = var.ebs_name
    volume_id = aws_ebs_volume.this.id
    instance_id = aws_instance.this.id
}