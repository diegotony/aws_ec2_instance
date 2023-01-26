# aws_ec2_instance

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ebs_volume.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume) | resource |
| [aws_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_network_interface_sg_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface_sg_attachment) | resource |
| [aws_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_volume_attachment.ebsAttach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/volume_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Give a description | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Key Access Key for instance | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | instance name | `string` | n/a | yes |
| <a name="input_ami"></a> [ami](#input\_ami) | The OS that be used in instance | `string` | `"ami-0cff7528ff583bf9a"` | no |
| <a name="input_ebs_name"></a> [ebs\_name](#input\_ebs\_name) | give a name to ebs | `string` | `""` | no |
| <a name="input_ebs_size"></a> [ebs\_size](#input\_ebs\_size) | give a size to ebs | `number` | `10` | no |
| <a name="input_egress"></a> [egress](#input\_egress) | Outbound Configs | <pre>map(object({<br>    description = string<br>    from_port   = string<br>    to_port     = string<br>    protocol    = string<br>    cidr_blocks = any<br>    allow       = string<br>    type        = string<br>  }))</pre> | <pre>{<br>  "default": {<br>    "allow": "true",<br>    "cidr_blocks": [<br>      "0.0.0.0/0"<br>    ],<br>    "description": "default",<br>    "from_port": 0,<br>    "protocol": "-1",<br>    "to_port": 0,<br>    "type": "egress"<br>  }<br>}</pre> | no |
| <a name="input_ingress"></a> [ingress](#input\_ingress) | Inbound Configs | <pre>map(object({<br>    description = string<br>    from_port   = string<br>    to_port     = string<br>    protocol    = string<br>    cidr_blocks = any<br>    allow       = string<br>    type        = string<br>  }))</pre> | <pre>{<br>  "http-80": {<br>    "allow": "true",<br>    "cidr_blocks": [<br>      "0.0.0.0/0"<br>    ],<br>    "description": "Allow port 80 from VPC",<br>    "from_port": 80,<br>    "protocol": "tcp",<br>    "to_port": 80,<br>    "type": "ingress"<br>  },<br>  "ssh-22": {<br>    "allow": "true",<br>    "cidr_blocks": [<br>      "0.0.0.0/0"<br>    ],<br>    "description": "Allow port 22 from VPC",<br>    "from_port": 22,<br>    "protocol": "tcp",<br>    "to_port": 22,<br>    "type": "ingress"<br>  }<br>}</pre> | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type eg. t2.micro, t2.small etc | `string` | `"t2.micro"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | List of security groups names | `any` | `[]` | no |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | give a name to security group | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | description tags | `map` | <pre>{<br>  "foo": "bar"<br>}</pre> | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | Commands that you wish execute in instance | `string` | `"    #! /bin/bash\n    sudo yum update -y\n    sudo yum install -y httpd\n    systemctl start httpd\n    systemctl enable httpd\n    echo \"<h1>Hello world  from $(hostname -f) </h1>\" > /var/www/html/index.html\n"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami"></a> [ami](#output\_ami) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_primary_network_interface_id"></a> [primary\_network\_interface\_id](#output\_primary\_network\_interface\_id) | n/a |
| <a name="output_private_dns"></a> [private\_dns](#output\_private\_dns) | n/a |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | n/a |
| <a name="output_security_groups"></a> [security\_groups](#output\_security\_groups) | n/a |
| <a name="output_test"></a> [test](#output\_test) | n/a |
<!-- END_TF_DOCS -->