module "my_instance" {
    source = "../"
    # "gst"
    name = "my_awesome_instance"
    description = "a simple test"
    key_name = "terraform"
}
