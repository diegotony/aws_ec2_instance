# aws_ec2_instance

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Key Access Key | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | description tags | `any` | n/a | yes |
| <a name="input_ami"></a> [ami](#input\_ami) | The OS that be used in instance | `string` | `"ami-0cff7528ff583bf9a"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type eg. t2.micro, t2.small etc | `string` | `"t2.micro"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | security group | `any` | `null` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | Commands that you wish execute in instance | `string` | `"    #! /bin/bash\n    sudo yum update -y\n    sudo yum install -y httpd\n    systemctl start httpd\n    systemctl enable httpd\n    echo \"<h1>Hello world  from $(hostname -f) </h1>\" > /var/www/html/index.html\n"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_private_dns"></a> [private\_dns](#output\_private\_dns) | n/a |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | n/a |
<!-- END_TF_DOCS -->