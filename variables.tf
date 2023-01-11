variable "name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "description" {
  type = string
  description = "(optional) describe your variable"
}

variable "ami" {
  type        = string
  description = "The OS that be used in instance"
  default     = "ami-0cff7528ff583bf9a"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Instance type eg. t2.micro, t2.small etc"
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

# Network

variable "sg_name" {
  type = string
  description = "(optional) describe your variable"
}

variable "security_groups" {
  type        = any
  description = "security group"
  default     = null
}

variable "ingress" {
  description = "Inbound Config"
  type = map(object({
    description = string
    from_port   = string
    to_port     = string
    protocol    = string
    cidr_blocks = any
    allow       = string
    type        = string
  }))

  default = {
    ssh-22 = {
      description = "Allow port 22 from VPC"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      allow       = "true"
      type        = "ingress"
    },
    http-80 = {
      description = "Allow port 80 from VPC"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      allow       = "true"
      "type"      = "ingress"
    }
  }
}

variable "egress" {
  description = "Outbound Config"
  type = map(object({
    description = string
    from_port   = string
    to_port     = string
    protocol    = string
    cidr_blocks = any
    allow       = string
    type        = string
  }))

  default = {
    default = {
      description = "default"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      allow       = "true"
      type        = "egress"

    }
  }
}

# EBS

variable "ebs_name" {
  type = string
  description = "(optional) describe your variable"
}

variable "ebs_size" {
  type = number
  description = "(optional) describe your variable"
}



variable "tags" {
  description = "description tags"
  default     = { "foo" = "bar" }
}
