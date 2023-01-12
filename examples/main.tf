module "my_instance" {
    source = "../"
    # "git::https://github.com/diegotony/aws_ec2_instance.git?ref=update-module"
    name = "my_awesome_instance_2"
    description = "a simple test"
    key_name = "terraform"
}
