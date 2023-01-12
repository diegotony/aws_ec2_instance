module "my_instance" {
    source = "../"
    name = "my_awesome_instance_2"
    description = "a simple test"
    key_name = "terraform"
}

output "test" {
    value = module.my_instance.test
}