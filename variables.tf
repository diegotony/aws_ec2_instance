variable "tags" {
  description = "description tags"
  default = {"":""}
}

variable "name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "ami" {
  description = "The OS that be used in instance"
  type        = string
  default     = "ami-0cff7528ff583bf9a"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "Instance type eg. t2.micro, t2.small etc"
}

variable "security_groups" {
  type        = any
  description = "security group"
  default     = null
}
variable "key_name" {
  type        = string
  description = "Key Access Key"
}

variable "user_data" {
  description = "Commands that you wish execute in instance"
  default     = <<EOF
    #! /bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Hello world  from $(hostname -f) </h1>" > /var/www/html/index.html
  EOF
}

variable "description" {
  type = any
  description = "(optional) describe your variable"
}