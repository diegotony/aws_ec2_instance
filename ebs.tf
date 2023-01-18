resource "aws_ebs_volume" "this" {
    count = var.ebs_name == "" ? 0 : 1
    availability_zone = aws_instance.this.availability_zone
    size = var.ebs_size
    tags = local.tags  
}

resource "aws_volume_attachment" "ebsAttach" {
    depends_on = [
        aws_ebs_volume.this
    ]
    count = var.ebs_name == "" ? 0 : 1
    device_name = var.ebs_name == "" ? "": var.ebs_name
    volume_id = aws_ebs_volume.this[count.index].id
    instance_id = aws_instance.this.id
}